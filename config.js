// Datos de conexión a Supabase (Project Settings → API).
// La "anon public key" está pensada para usarse en el navegador: la seguridad
// la dan las políticas RLS de supabase/schema.sql (cada usuario ve solo sus pedidos).
// Si dejás estos campos vacíos, la calculadora guarda los pedidos solo en este navegador.
window.HD_SUPABASE = {
  url: '',      // ej: 'https://abcdefghijklm.supabase.co'
  anonKey: ''   // ej: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...'
};
