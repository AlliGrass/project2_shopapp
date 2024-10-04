CREATE DATABASE shopapp;

CREATE TABLE collections (
    id SERIAL PRIMARY KEY,
    collection_name TEXT,
    image_url TEXT
);

CREATE TABLE items (
    id SERIAL PRIMARY KEY,
    collection_id INTEGER NOT NULL,
    item_name TEXT,
    image_url TEXT,
    description TEXT,
    stock INTEGER,
    price INTEGER
);

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    email TEXT UNIQUE,
    password_digest TEXT,
    isAdmin BOOLEAN
);


CREATE TABLE cart (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    item_id INTEGER NOT NULL
);


CREATE TABLE comments (
    id SERIAL PRIMARY KEY,
    item_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    comment TEXT
);




INSERT INTO collections (collection_name, image_url)
VALUES ('hats', 'https://imgs.search.brave.com/tBu0NKX6zt9KoGTNH95kh2s20bEFyt5yhLsJPtLz4mA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMtbmEuc3NsLWlt/YWdlcy1hbWF6b24u/Y29tL2ltYWdlcy9J/LzYxNmRpalJURUVM/LmpwZw');

INSERT INTO collections (collection_name, image_url)
VALUES ('shirts', 'https://imgs.search.brave.com/7Q69jrArOujjYXU9OYBGsxiRbnQ0o54WoTv_GN8bKlA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9paDEu/cmVkYnViYmxlLm5l/dC9pbWFnZS4xODc5/ODU4MjE3LjQwODEv/c3NyY28sc2xpbV9m/aXRfdF9zaGlydCx3/b21lbnMsMTAxMDEw/OjAxYzVjYTI3YzYs/ZnJvbnQsc3F1YXJl/X3Byb2R1Y3QsNjAw/eDYwMC5qcGc');

INSERT INTO collections (collection_name, image_url)
VALUES ('pants', 'https://imgs.search.brave.com/C4qIdhUICGk8sI5s-_nFRFKPUjrvNJJqVbEcAd5AYas/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/YXJvdW5kc3F1YXJl/LmNvbS9jZG4vc2hv/cC9wcm9kdWN0cy9J/TUdfMjI3MF8xY2Iw/NmIxYy1hYTZhLTQ0/OTctYTNkNS1kODlm/YjJiMDJhZGRfZ3Jh/bmRlLmpwZz92PTE2/NTEyNTIxOTI');

INSERT INTO collections (collection_name, image_url)
VALUES ('shoes', 'https://imgs.search.brave.com/hx6C3dl9AYpqndgzzTeIpGh66R5h327TdaVp-1R-qEA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NTF6T3dpWGVXUkwu/anBn');

INSERT INTO collections (collection_name, image_url)
VALUES ('socks', 'https://imgs.search.brave.com/Y8XqKOgL8b88lRgZ3UCUo-bjqeJ1sx7b1ff_lM_VYLM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zb2Nr/Zmx5LmNvbS9jZG4v/c2hvcC9wcm9kdWN0/cy9Db2xvcmZ1bFNx/dWFyZTFfNzAweDcw/MC5qcGc_dj0xNjMz/NzM0MTc2');







INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (1, 'hat', 'https://imgs.search.brave.com/tBu0NKX6zt9KoGTNH95kh2s20bEFyt5yhLsJPtLz4mA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMtbmEuc3NsLWlt/YWdlcy1hbWF6b24u/Y29tL2ltYWdlcy9J/LzYxNmRpalJURUVM/LmpwZw', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);
INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (1, 'hat', 'https://imgs.search.brave.com/tBu0NKX6zt9KoGTNH95kh2s20bEFyt5yhLsJPtLz4mA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMtbmEuc3NsLWlt/YWdlcy1hbWF6b24u/Y29tL2ltYWdlcy9J/LzYxNmRpalJURUVM/LmpwZw', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);
INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (1, 'hat', 'https://imgs.search.brave.com/tBu0NKX6zt9KoGTNH95kh2s20bEFyt5yhLsJPtLz4mA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMtbmEuc3NsLWlt/YWdlcy1hbWF6b24u/Y29tL2ltYWdlcy9J/LzYxNmRpalJURUVM/LmpwZw', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);
INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (1, 'hat', 'https://imgs.search.brave.com/tBu0NKX6zt9KoGTNH95kh2s20bEFyt5yhLsJPtLz4mA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMtbmEuc3NsLWlt/YWdlcy1hbWF6b24u/Y29tL2ltYWdlcy9J/LzYxNmRpalJURUVM/LmpwZw', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);
INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (1, 'hat', 'https://imgs.search.brave.com/tBu0NKX6zt9KoGTNH95kh2s20bEFyt5yhLsJPtLz4mA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMtbmEuc3NsLWlt/YWdlcy1hbWF6b24u/Y29tL2ltYWdlcy9J/LzYxNmRpalJURUVM/LmpwZw', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);
INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (1, 'hat', 'https://imgs.search.brave.com/tBu0NKX6zt9KoGTNH95kh2s20bEFyt5yhLsJPtLz4mA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMtbmEuc3NsLWlt/YWdlcy1hbWF6b24u/Y29tL2ltYWdlcy9J/LzYxNmRpalJURUVM/LmpwZw', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);
INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (1, 'hat', 'https://imgs.search.brave.com/tBu0NKX6zt9KoGTNH95kh2s20bEFyt5yhLsJPtLz4mA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMtbmEuc3NsLWlt/YWdlcy1hbWF6b24u/Y29tL2ltYWdlcy9J/LzYxNmRpalJURUVM/LmpwZw', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);

INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (2, 'shirts', 'https://imgs.search.brave.com/7Q69jrArOujjYXU9OYBGsxiRbnQ0o54WoTv_GN8bKlA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9paDEu/cmVkYnViYmxlLm5l/dC9pbWFnZS4xODc5/ODU4MjE3LjQwODEv/c3NyY28sc2xpbV9m/aXRfdF9zaGlydCx3/b21lbnMsMTAxMDEw/OjAxYzVjYTI3YzYs/ZnJvbnQsc3F1YXJl/X3Byb2R1Y3QsNjAw/eDYwMC5qcGc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);
INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (2, 'shirts', 'https://imgs.search.brave.com/7Q69jrArOujjYXU9OYBGsxiRbnQ0o54WoTv_GN8bKlA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9paDEu/cmVkYnViYmxlLm5l/dC9pbWFnZS4xODc5/ODU4MjE3LjQwODEv/c3NyY28sc2xpbV9m/aXRfdF9zaGlydCx3/b21lbnMsMTAxMDEw/OjAxYzVjYTI3YzYs/ZnJvbnQsc3F1YXJl/X3Byb2R1Y3QsNjAw/eDYwMC5qcGc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);
INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (2, 'shirts', 'https://imgs.search.brave.com/7Q69jrArOujjYXU9OYBGsxiRbnQ0o54WoTv_GN8bKlA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9paDEu/cmVkYnViYmxlLm5l/dC9pbWFnZS4xODc5/ODU4MjE3LjQwODEv/c3NyY28sc2xpbV9m/aXRfdF9zaGlydCx3/b21lbnMsMTAxMDEw/OjAxYzVjYTI3YzYs/ZnJvbnQsc3F1YXJl/X3Byb2R1Y3QsNjAw/eDYwMC5qcGc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);
INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (2, 'shirts', 'https://imgs.search.brave.com/7Q69jrArOujjYXU9OYBGsxiRbnQ0o54WoTv_GN8bKlA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9paDEu/cmVkYnViYmxlLm5l/dC9pbWFnZS4xODc5/ODU4MjE3LjQwODEv/c3NyY28sc2xpbV9m/aXRfdF9zaGlydCx3/b21lbnMsMTAxMDEw/OjAxYzVjYTI3YzYs/ZnJvbnQsc3F1YXJl/X3Byb2R1Y3QsNjAw/eDYwMC5qcGc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);
INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (2, 'shirts', 'https://imgs.search.brave.com/7Q69jrArOujjYXU9OYBGsxiRbnQ0o54WoTv_GN8bKlA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9paDEu/cmVkYnViYmxlLm5l/dC9pbWFnZS4xODc5/ODU4MjE3LjQwODEv/c3NyY28sc2xpbV9m/aXRfdF9zaGlydCx3/b21lbnMsMTAxMDEw/OjAxYzVjYTI3YzYs/ZnJvbnQsc3F1YXJl/X3Byb2R1Y3QsNjAw/eDYwMC5qcGc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);
INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (2, 'shirts', 'https://imgs.search.brave.com/7Q69jrArOujjYXU9OYBGsxiRbnQ0o54WoTv_GN8bKlA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9paDEu/cmVkYnViYmxlLm5l/dC9pbWFnZS4xODc5/ODU4MjE3LjQwODEv/c3NyY28sc2xpbV9m/aXRfdF9zaGlydCx3/b21lbnMsMTAxMDEw/OjAxYzVjYTI3YzYs/ZnJvbnQsc3F1YXJl/X3Byb2R1Y3QsNjAw/eDYwMC5qcGc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);
INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (2, 'shirts', 'https://imgs.search.brave.com/7Q69jrArOujjYXU9OYBGsxiRbnQ0o54WoTv_GN8bKlA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9paDEu/cmVkYnViYmxlLm5l/dC9pbWFnZS4xODc5/ODU4MjE3LjQwODEv/c3NyY28sc2xpbV9m/aXRfdF9zaGlydCx3/b21lbnMsMTAxMDEw/OjAxYzVjYTI3YzYs/ZnJvbnQsc3F1YXJl/X3Byb2R1Y3QsNjAw/eDYwMC5qcGc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);
INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (2, 'shirts', 'https://imgs.search.brave.com/7Q69jrArOujjYXU9OYBGsxiRbnQ0o54WoTv_GN8bKlA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9paDEu/cmVkYnViYmxlLm5l/dC9pbWFnZS4xODc5/ODU4MjE3LjQwODEv/c3NyY28sc2xpbV9m/aXRfdF9zaGlydCx3/b21lbnMsMTAxMDEw/OjAxYzVjYTI3YzYs/ZnJvbnQsc3F1YXJl/X3Byb2R1Y3QsNjAw/eDYwMC5qcGc', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);

INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (3, 'pants', 'https://imgs.search.brave.com/C4qIdhUICGk8sI5s-_nFRFKPUjrvNJJqVbEcAd5AYas/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/YXJvdW5kc3F1YXJl/LmNvbS9jZG4vc2hv/cC9wcm9kdWN0cy9J/TUdfMjI3MF8xY2Iw/NmIxYy1hYTZhLTQ0/OTctYTNkNS1kODlm/YjJiMDJhZGRfZ3Jh/bmRlLmpwZz92PTE2/NTEyNTIxOTI', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);
INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (3, 'pants', 'https://imgs.search.brave.com/C4qIdhUICGk8sI5s-_nFRFKPUjrvNJJqVbEcAd5AYas/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/YXJvdW5kc3F1YXJl/LmNvbS9jZG4vc2hv/cC9wcm9kdWN0cy9J/TUdfMjI3MF8xY2Iw/NmIxYy1hYTZhLTQ0/OTctYTNkNS1kODlm/YjJiMDJhZGRfZ3Jh/bmRlLmpwZz92PTE2/NTEyNTIxOTI', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);
INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (3, 'pants', 'https://imgs.search.brave.com/C4qIdhUICGk8sI5s-_nFRFKPUjrvNJJqVbEcAd5AYas/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/YXJvdW5kc3F1YXJl/LmNvbS9jZG4vc2hv/cC9wcm9kdWN0cy9J/TUdfMjI3MF8xY2Iw/NmIxYy1hYTZhLTQ0/OTctYTNkNS1kODlm/YjJiMDJhZGRfZ3Jh/bmRlLmpwZz92PTE2/NTEyNTIxOTI', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);
INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (3, 'pants', 'https://imgs.search.brave.com/C4qIdhUICGk8sI5s-_nFRFKPUjrvNJJqVbEcAd5AYas/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/YXJvdW5kc3F1YXJl/LmNvbS9jZG4vc2hv/cC9wcm9kdWN0cy9J/TUdfMjI3MF8xY2Iw/NmIxYy1hYTZhLTQ0/OTctYTNkNS1kODlm/YjJiMDJhZGRfZ3Jh/bmRlLmpwZz92PTE2/NTEyNTIxOTI', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);
INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (3, 'pants', 'https://imgs.search.brave.com/C4qIdhUICGk8sI5s-_nFRFKPUjrvNJJqVbEcAd5AYas/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/YXJvdW5kc3F1YXJl/LmNvbS9jZG4vc2hv/cC9wcm9kdWN0cy9J/TUdfMjI3MF8xY2Iw/NmIxYy1hYTZhLTQ0/OTctYTNkNS1kODlm/YjJiMDJhZGRfZ3Jh/bmRlLmpwZz92PTE2/NTEyNTIxOTI', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);
INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (3, 'pants', 'https://imgs.search.brave.com/C4qIdhUICGk8sI5s-_nFRFKPUjrvNJJqVbEcAd5AYas/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/YXJvdW5kc3F1YXJl/LmNvbS9jZG4vc2hv/cC9wcm9kdWN0cy9J/TUdfMjI3MF8xY2Iw/NmIxYy1hYTZhLTQ0/OTctYTNkNS1kODlm/YjJiMDJhZGRfZ3Jh/bmRlLmpwZz92PTE2/NTEyNTIxOTI', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);
INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (3, 'pants', 'https://imgs.search.brave.com/C4qIdhUICGk8sI5s-_nFRFKPUjrvNJJqVbEcAd5AYas/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/YXJvdW5kc3F1YXJl/LmNvbS9jZG4vc2hv/cC9wcm9kdWN0cy9J/TUdfMjI3MF8xY2Iw/NmIxYy1hYTZhLTQ0/OTctYTNkNS1kODlm/YjJiMDJhZGRfZ3Jh/bmRlLmpwZz92PTE2/NTEyNTIxOTI', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);

INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (4, 'shoes', 'https://imgs.search.brave.com/hx6C3dl9AYpqndgzzTeIpGh66R5h327TdaVp-1R-qEA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NTF6T3dpWGVXUkwu/anBn', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);
INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (4, 'shoes', 'https://imgs.search.brave.com/hx6C3dl9AYpqndgzzTeIpGh66R5h327TdaVp-1R-qEA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NTF6T3dpWGVXUkwu/anBn', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);
INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (4, 'shoes', 'https://imgs.search.brave.com/hx6C3dl9AYpqndgzzTeIpGh66R5h327TdaVp-1R-qEA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NTF6T3dpWGVXUkwu/anBn', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);
INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (4, 'shoes', 'https://imgs.search.brave.com/hx6C3dl9AYpqndgzzTeIpGh66R5h327TdaVp-1R-qEA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NTF6T3dpWGVXUkwu/anBn', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);
INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (4, 'shoes', 'https://imgs.search.brave.com/hx6C3dl9AYpqndgzzTeIpGh66R5h327TdaVp-1R-qEA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NTF6T3dpWGVXUkwu/anBn', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);
INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (4, 'shoes', 'https://imgs.search.brave.com/hx6C3dl9AYpqndgzzTeIpGh66R5h327TdaVp-1R-qEA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NTF6T3dpWGVXUkwu/anBn', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);
INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (4, 'shoes', 'https://imgs.search.brave.com/hx6C3dl9AYpqndgzzTeIpGh66R5h327TdaVp-1R-qEA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NTF6T3dpWGVXUkwu/anBn', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);

INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (5, 'socks', 'https://imgs.search.brave.com/Y8XqKOgL8b88lRgZ3UCUo-bjqeJ1sx7b1ff_lM_VYLM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zb2Nr/Zmx5LmNvbS9jZG4v/c2hvcC9wcm9kdWN0/cy9Db2xvcmZ1bFNx/dWFyZTFfNzAweDcw/MC5qcGc_dj0xNjMz/NzM0MTc2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);
INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (5, 'socks', 'https://imgs.search.brave.com/Y8XqKOgL8b88lRgZ3UCUo-bjqeJ1sx7b1ff_lM_VYLM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zb2Nr/Zmx5LmNvbS9jZG4v/c2hvcC9wcm9kdWN0/cy9Db2xvcmZ1bFNx/dWFyZTFfNzAweDcw/MC5qcGc_dj0xNjMz/NzM0MTc2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);
INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (5, 'socks', 'https://imgs.search.brave.com/Y8XqKOgL8b88lRgZ3UCUo-bjqeJ1sx7b1ff_lM_VYLM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zb2Nr/Zmx5LmNvbS9jZG4v/c2hvcC9wcm9kdWN0/cy9Db2xvcmZ1bFNx/dWFyZTFfNzAweDcw/MC5qcGc_dj0xNjMz/NzM0MTc2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);
INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (5, 'socks', 'https://imgs.search.brave.com/Y8XqKOgL8b88lRgZ3UCUo-bjqeJ1sx7b1ff_lM_VYLM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zb2Nr/Zmx5LmNvbS9jZG4v/c2hvcC9wcm9kdWN0/cy9Db2xvcmZ1bFNx/dWFyZTFfNzAweDcw/MC5qcGc_dj0xNjMz/NzM0MTc2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);
INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (5, 'socks', 'https://imgs.search.brave.com/Y8XqKOgL8b88lRgZ3UCUo-bjqeJ1sx7b1ff_lM_VYLM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zb2Nr/Zmx5LmNvbS9jZG4v/c2hvcC9wcm9kdWN0/cy9Db2xvcmZ1bFNx/dWFyZTFfNzAweDcw/MC5qcGc_dj0xNjMz/NzM0MTc2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);
INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (5, 'socks', 'https://imgs.search.brave.com/Y8XqKOgL8b88lRgZ3UCUo-bjqeJ1sx7b1ff_lM_VYLM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zb2Nr/Zmx5LmNvbS9jZG4v/c2hvcC9wcm9kdWN0/cy9Db2xvcmZ1bFNx/dWFyZTFfNzAweDcw/MC5qcGc_dj0xNjMz/NzM0MTc2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);
INSERT INTO items (collection_id, item_name, image_url, description, stock, price)
VALUES (5, 'socks', 'https://imgs.search.brave.com/Y8XqKOgL8b88lRgZ3UCUo-bjqeJ1sx7b1ff_lM_VYLM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zb2Nr/Zmx5LmNvbS9jZG4v/c2hvcC9wcm9kdWN0/cy9Db2xvcmZ1bFNx/dWFyZTFfNzAweDcw/MC5qcGc_dj0xNjMz/NzM0MTc2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?', 20, 20);






INSERT INTO comments (item_id, user_id, comment)
VALUES (1, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (1, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (1, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (2, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (2, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (2, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (3, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (3, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (3, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (4, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (4, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (4, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (5, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (5, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (5, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (6, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (6, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (6, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (7, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (7, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (7, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (8, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (8, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (8, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (9, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (9, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (9, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (10, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (10, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (10, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (11, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (11, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (11, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (12, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (12, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (12, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (13, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (13, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (13, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (14, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (14, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (14, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (15, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (15, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (15, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (16, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (16, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (16, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (17, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (17, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (17, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (18, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (18, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (18, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (19, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (19, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (19, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (20, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (20, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (20, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (21, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (21, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (21, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (22, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (22, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (22, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (23, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (23, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (23, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (24, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (24, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (24, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (25, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (25, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (25, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (26, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (26, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (26, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (27, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (27, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (27, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (28, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (28, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (28, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (29, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (29, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (29, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (30, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (30, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (30, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (31, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (31, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (31, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (32, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (32, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (32, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (33, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (33, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (33, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (34, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (34, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (34, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (35, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (35, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (35, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


INSERT INTO comments (item_id, user_id, comment)
VALUES (36, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (36, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');

INSERT INTO comments (item_id, user_id, comment)
VALUES (36, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias neque debitis quisquam reiciendis iure, pariatur labore quis quam architecto quod! Quaerat recusandae veritatis perspiciatis tempore hic autem dolor, omnis accusantium?');


