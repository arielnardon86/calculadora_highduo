-- Tabla de pedidos de la calculadora de costos High Duo.
-- Ejecutar una vez en Supabase: SQL Editor → New query → pegar → Run.

create table if not exists public.pedidos (
  id          text primary key,
  user_id     uuid not null default auth.uid() references auth.users (id) on delete cascade,
  nombre      text not null default 'Sin nombre',
  datos       jsonb not null,
  creado      timestamptz not null default now(),
  actualizado timestamptz not null default now()
);

create index if not exists pedidos_user_id_idx on public.pedidos (user_id);

-- Cada usuario solo puede ver y modificar sus propios pedidos.
alter table public.pedidos enable row level security;

drop policy if exists "ver propios"       on public.pedidos;
drop policy if exists "crear propios"     on public.pedidos;
drop policy if exists "editar propios"    on public.pedidos;
drop policy if exists "eliminar propios"  on public.pedidos;

create policy "ver propios"      on public.pedidos for select using (auth.uid() = user_id);
create policy "crear propios"    on public.pedidos for insert with check (auth.uid() = user_id);
create policy "editar propios"   on public.pedidos for update using (auth.uid() = user_id) with check (auth.uid() = user_id);
create policy "eliminar propios" on public.pedidos for delete using (auth.uid() = user_id);
