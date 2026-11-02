// Datos de conexión a Supabase (Settings → API Keys: publishable key; Data API: Project URL).
// La publishable key (o la "anon public key" de las claves legacy) está pensada para usarse en el navegador: la seguridad
// la dan las políticas RLS de supabase/schema.sql (cada usuario ve solo sus pedidos).
// Si dejás estos campos vacíos, la calculadora guarda los pedidos solo en este navegador.
window.HD_SUPABASE = {
  url: 'https://jrzsisjmjwahvvwmfcsk.supabase.co',
  anonKey: 'sb_publishable_r-V2hLjMSVIJu8NJOPXvqg_eVnelwuQ'  // publishable key
};
