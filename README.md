# Calculadora de costos de importación — High Duo

Página web (un `index.html`) para calcular el **costo real** de los productos importados y los **precios de venta sugeridos** en Mercado Libre y Tienda Nube. Los pedidos se guardan en **Supabase** (Postgres) con login, así se ven desde cualquier dispositivo.

## Qué calcula

- **Costo real por producto**: FOB + gastos (USD o ARS, con cotización editable) + impuestos **no deducibles**. IVA, IVA adicional y Ganancias van como crédito fiscal (configurable por impuesto).
- **Impuestos por porcentaje** sobre el CIF y la base IVA, o por monto fijo. Si cargás el total de impuestos del presupuesto, el CIF se calcula solo para que coincida.
- **Reparto entre productos**: mixto (gastos por volumen, impuestos por valor), todo por valor FOB o todo por CBM.
- **Mercado Libre**: precio final con IVA + IIBB, comisión, costo por unidad vendida (debajo del umbral) o envío por peso.
- **Tienda Nube**: precio de lista y precio con transferencia, con la rentabilidad objetivo garantizada.
- **Varios pedidos**: crear, duplicar, renombrar, eliminar, exportar e importar.

## Puesta en marcha (una sola vez)

### 1. Supabase
1. Creá un proyecto gratis en https://supabase.com.
2. **SQL Editor → New query**: pegá el contenido de [`supabase/schema.sql`](supabase/schema.sql) y apretá **Run**.
3. **Project Settings → API**: copiá el **Project URL** y la **anon public key** en [`config.js`](config.js).
4. **Authentication → URL Configuration**: en **Site URL** poné la dirección donde publiques la calculadora (paso 2).
   Opcional: en **Authentication → Providers → Email** podés desactivar *Confirm email* si no querés confirmar la cuenta por mail.

La anon key es pública por diseño: la seguridad la dan las políticas RLS del schema (cada usuario solo ve sus pedidos).

### 2. Publicarla
Cualquier hosting estático sirve. Por ejemplo **Vercel** o **Netlify** (gratis, funcionan con repos privados): importás este repositorio y no hace falta configurar nada de build.

### 3. Primer ingreso
Entrás, tocás **Crear cuenta** con tu email y contraseña, y después **Importar pedido** para subir los pedidos que tengas exportados en `.json`.

Sin `config.js` completo la calculadora funciona igual, pero guarda los pedidos solo en ese navegador.
