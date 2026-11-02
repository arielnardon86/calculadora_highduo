# Calculadora de costos de importación — High Duo

Página web estática (un solo `index.html`, sin dependencias) para calcular el **costo real** de los productos importados y los **precios de venta sugeridos** en Mercado Libre y Tienda Nube.

## Qué calcula

- **Costo real por producto**: FOB + gastos (USD o ARS, con cotización editable) + impuestos **no deducibles**. IVA, IVA adicional y Ganancias se tratan como crédito fiscal (deducibles, configurable por impuesto).
- **Impuestos por porcentaje** sobre el valor en aduana (CIF) y la base IVA, o por monto fijo. Si cargás el total de impuestos del presupuesto, el CIF se despeja solo para que el total coincida.
- **Reparto entre productos**: mixto (gastos por volumen, impuestos por valor), todo por valor FOB o todo por CBM.
- **Mercado Libre**: precio final con IVA + IIBB, comisión, costo por unidad vendida (debajo del umbral) o envío por peso (desde el umbral).
- **Tienda Nube**: precio de lista y precio con transferencia (descuento), garantizando la rentabilidad objetivo con cualquier medio de pago.
- **Varios pedidos**: crear, duplicar, renombrar, eliminar, exportar e importar (JSON).

## Cómo usarla

Abrí `index.html` en el navegador, o publicalo en cualquier hosting estático (GitHub Pages, Netlify, Vercel).

Los pedidos se guardan en el `localStorage` del navegador. Para pasarlos a otra computadora usá **Exportar pedido** / **Importar pedido**.

La misma página publicada como Artifact de Claude guarda los pedidos en la cuenta (accesible desde cualquier dispositivo).
