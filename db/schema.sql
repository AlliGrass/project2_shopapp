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
    description TEXT
    -- tags ARRAY
);


ALTER TABLE items ADD COLUMN id SERIAL PRIMARY KEY; 

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    email TEXT UNIQUE,
    password_digest TEXT,
    isAdmin BOOLEAN
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



INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (1, 'hat', 'https://imgs.search.brave.com/tBu0NKX6zt9KoGTNH95kh2s20bEFyt5yhLsJPtLz4mA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMtbmEuc3NsLWlt/YWdlcy1hbWF6b24u/Y29tL2ltYWdlcy9J/LzYxNmRpalJURUVM/LmpwZw', 'hat');
INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (1, 'hat', 'https://imgs.search.brave.com/tBu0NKX6zt9KoGTNH95kh2s20bEFyt5yhLsJPtLz4mA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMtbmEuc3NsLWlt/YWdlcy1hbWF6b24u/Y29tL2ltYWdlcy9J/LzYxNmRpalJURUVM/LmpwZw', 'hat');
INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (1, 'hat', 'https://imgs.search.brave.com/tBu0NKX6zt9KoGTNH95kh2s20bEFyt5yhLsJPtLz4mA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMtbmEuc3NsLWlt/YWdlcy1hbWF6b24u/Y29tL2ltYWdlcy9J/LzYxNmRpalJURUVM/LmpwZw', 'hat');
INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (1, 'hat', 'https://imgs.search.brave.com/tBu0NKX6zt9KoGTNH95kh2s20bEFyt5yhLsJPtLz4mA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMtbmEuc3NsLWlt/YWdlcy1hbWF6b24u/Y29tL2ltYWdlcy9J/LzYxNmRpalJURUVM/LmpwZw', 'hat');
INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (1, 'hat', 'https://imgs.search.brave.com/tBu0NKX6zt9KoGTNH95kh2s20bEFyt5yhLsJPtLz4mA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMtbmEuc3NsLWlt/YWdlcy1hbWF6b24u/Y29tL2ltYWdlcy9J/LzYxNmRpalJURUVM/LmpwZw', 'hat');
INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (1, 'hat', 'https://imgs.search.brave.com/tBu0NKX6zt9KoGTNH95kh2s20bEFyt5yhLsJPtLz4mA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMtbmEuc3NsLWlt/YWdlcy1hbWF6b24u/Y29tL2ltYWdlcy9J/LzYxNmRpalJURUVM/LmpwZw', 'hat');
INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (1, 'hat', 'https://imgs.search.brave.com/tBu0NKX6zt9KoGTNH95kh2s20bEFyt5yhLsJPtLz4mA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMtbmEuc3NsLWlt/YWdlcy1hbWF6b24u/Y29tL2ltYWdlcy9J/LzYxNmRpalJURUVM/LmpwZw', 'hat');
INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (1, 'hat', 'https://imgs.search.brave.com/tBu0NKX6zt9KoGTNH95kh2s20bEFyt5yhLsJPtLz4mA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMtbmEuc3NsLWlt/YWdlcy1hbWF6b24u/Y29tL2ltYWdlcy9J/LzYxNmRpalJURUVM/LmpwZw', 'hat');


INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (2, 'shirts', 'https://imgs.search.brave.com/7Q69jrArOujjYXU9OYBGsxiRbnQ0o54WoTv_GN8bKlA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9paDEu/cmVkYnViYmxlLm5l/dC9pbWFnZS4xODc5/ODU4MjE3LjQwODEv/c3NyY28sc2xpbV9m/aXRfdF9zaGlydCx3/b21lbnMsMTAxMDEw/OjAxYzVjYTI3YzYs/ZnJvbnQsc3F1YXJl/X3Byb2R1Y3QsNjAw/eDYwMC5qcGc', 'shirt');
INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (2, 'shirts', 'https://imgs.search.brave.com/7Q69jrArOujjYXU9OYBGsxiRbnQ0o54WoTv_GN8bKlA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9paDEu/cmVkYnViYmxlLm5l/dC9pbWFnZS4xODc5/ODU4MjE3LjQwODEv/c3NyY28sc2xpbV9m/aXRfdF9zaGlydCx3/b21lbnMsMTAxMDEw/OjAxYzVjYTI3YzYs/ZnJvbnQsc3F1YXJl/X3Byb2R1Y3QsNjAw/eDYwMC5qcGc', 'shirt');
INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (2, 'shirts', 'https://imgs.search.brave.com/7Q69jrArOujjYXU9OYBGsxiRbnQ0o54WoTv_GN8bKlA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9paDEu/cmVkYnViYmxlLm5l/dC9pbWFnZS4xODc5/ODU4MjE3LjQwODEv/c3NyY28sc2xpbV9m/aXRfdF9zaGlydCx3/b21lbnMsMTAxMDEw/OjAxYzVjYTI3YzYs/ZnJvbnQsc3F1YXJl/X3Byb2R1Y3QsNjAw/eDYwMC5qcGc', 'shirt');
INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (2, 'shirts', 'https://imgs.search.brave.com/7Q69jrArOujjYXU9OYBGsxiRbnQ0o54WoTv_GN8bKlA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9paDEu/cmVkYnViYmxlLm5l/dC9pbWFnZS4xODc5/ODU4MjE3LjQwODEv/c3NyY28sc2xpbV9m/aXRfdF9zaGlydCx3/b21lbnMsMTAxMDEw/OjAxYzVjYTI3YzYs/ZnJvbnQsc3F1YXJl/X3Byb2R1Y3QsNjAw/eDYwMC5qcGc', 'shirt');
INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (2, 'shirts', 'https://imgs.search.brave.com/7Q69jrArOujjYXU9OYBGsxiRbnQ0o54WoTv_GN8bKlA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9paDEu/cmVkYnViYmxlLm5l/dC9pbWFnZS4xODc5/ODU4MjE3LjQwODEv/c3NyY28sc2xpbV9m/aXRfdF9zaGlydCx3/b21lbnMsMTAxMDEw/OjAxYzVjYTI3YzYs/ZnJvbnQsc3F1YXJl/X3Byb2R1Y3QsNjAw/eDYwMC5qcGc', 'shirt');
INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (2, 'shirts', 'https://imgs.search.brave.com/7Q69jrArOujjYXU9OYBGsxiRbnQ0o54WoTv_GN8bKlA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9paDEu/cmVkYnViYmxlLm5l/dC9pbWFnZS4xODc5/ODU4MjE3LjQwODEv/c3NyY28sc2xpbV9m/aXRfdF9zaGlydCx3/b21lbnMsMTAxMDEw/OjAxYzVjYTI3YzYs/ZnJvbnQsc3F1YXJl/X3Byb2R1Y3QsNjAw/eDYwMC5qcGc', 'shirt');
INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (2, 'shirts', 'https://imgs.search.brave.com/7Q69jrArOujjYXU9OYBGsxiRbnQ0o54WoTv_GN8bKlA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9paDEu/cmVkYnViYmxlLm5l/dC9pbWFnZS4xODc5/ODU4MjE3LjQwODEv/c3NyY28sc2xpbV9m/aXRfdF9zaGlydCx3/b21lbnMsMTAxMDEw/OjAxYzVjYTI3YzYs/ZnJvbnQsc3F1YXJl/X3Byb2R1Y3QsNjAw/eDYwMC5qcGc', 'shirt');
INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (2, 'shirts', 'https://imgs.search.brave.com/7Q69jrArOujjYXU9OYBGsxiRbnQ0o54WoTv_GN8bKlA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9paDEu/cmVkYnViYmxlLm5l/dC9pbWFnZS4xODc5/ODU4MjE3LjQwODEv/c3NyY28sc2xpbV9m/aXRfdF9zaGlydCx3/b21lbnMsMTAxMDEw/OjAxYzVjYTI3YzYs/ZnJvbnQsc3F1YXJl/X3Byb2R1Y3QsNjAw/eDYwMC5qcGc', 'shirt');

INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (3, 'pants', 'https://imgs.search.brave.com/C4qIdhUICGk8sI5s-_nFRFKPUjrvNJJqVbEcAd5AYas/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/YXJvdW5kc3F1YXJl/LmNvbS9jZG4vc2hv/cC9wcm9kdWN0cy9J/TUdfMjI3MF8xY2Iw/NmIxYy1hYTZhLTQ0/OTctYTNkNS1kODlm/YjJiMDJhZGRfZ3Jh/bmRlLmpwZz92PTE2/NTEyNTIxOTI', 'pants');
INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (3, 'pants', 'https://imgs.search.brave.com/C4qIdhUICGk8sI5s-_nFRFKPUjrvNJJqVbEcAd5AYas/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/YXJvdW5kc3F1YXJl/LmNvbS9jZG4vc2hv/cC9wcm9kdWN0cy9J/TUdfMjI3MF8xY2Iw/NmIxYy1hYTZhLTQ0/OTctYTNkNS1kODlm/YjJiMDJhZGRfZ3Jh/bmRlLmpwZz92PTE2/NTEyNTIxOTI', 'pants');
INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (3, 'pants', 'https://imgs.search.brave.com/C4qIdhUICGk8sI5s-_nFRFKPUjrvNJJqVbEcAd5AYas/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/YXJvdW5kc3F1YXJl/LmNvbS9jZG4vc2hv/cC9wcm9kdWN0cy9J/TUdfMjI3MF8xY2Iw/NmIxYy1hYTZhLTQ0/OTctYTNkNS1kODlm/YjJiMDJhZGRfZ3Jh/bmRlLmpwZz92PTE2/NTEyNTIxOTI', 'pants');
INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (3, 'pants', 'https://imgs.search.brave.com/C4qIdhUICGk8sI5s-_nFRFKPUjrvNJJqVbEcAd5AYas/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/YXJvdW5kc3F1YXJl/LmNvbS9jZG4vc2hv/cC9wcm9kdWN0cy9J/TUdfMjI3MF8xY2Iw/NmIxYy1hYTZhLTQ0/OTctYTNkNS1kODlm/YjJiMDJhZGRfZ3Jh/bmRlLmpwZz92PTE2/NTEyNTIxOTI', 'pants');
INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (3, 'pants', 'https://imgs.search.brave.com/C4qIdhUICGk8sI5s-_nFRFKPUjrvNJJqVbEcAd5AYas/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/YXJvdW5kc3F1YXJl/LmNvbS9jZG4vc2hv/cC9wcm9kdWN0cy9J/TUdfMjI3MF8xY2Iw/NmIxYy1hYTZhLTQ0/OTctYTNkNS1kODlm/YjJiMDJhZGRfZ3Jh/bmRlLmpwZz92PTE2/NTEyNTIxOTI', 'pants');
INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (3, 'pants', 'https://imgs.search.brave.com/C4qIdhUICGk8sI5s-_nFRFKPUjrvNJJqVbEcAd5AYas/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/YXJvdW5kc3F1YXJl/LmNvbS9jZG4vc2hv/cC9wcm9kdWN0cy9J/TUdfMjI3MF8xY2Iw/NmIxYy1hYTZhLTQ0/OTctYTNkNS1kODlm/YjJiMDJhZGRfZ3Jh/bmRlLmpwZz92PTE2/NTEyNTIxOTI', 'pants');

INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (4, 'shoes', 'https://imgs.search.brave.com/hx6C3dl9AYpqndgzzTeIpGh66R5h327TdaVp-1R-qEA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NTF6T3dpWGVXUkwu/anBn', 'shoes');
INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (4, 'shoes', 'https://imgs.search.brave.com/hx6C3dl9AYpqndgzzTeIpGh66R5h327TdaVp-1R-qEA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NTF6T3dpWGVXUkwu/anBn', 'shoes');
INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (4, 'shoes', 'https://imgs.search.brave.com/hx6C3dl9AYpqndgzzTeIpGh66R5h327TdaVp-1R-qEA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NTF6T3dpWGVXUkwu/anBn', 'shoes');
INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (4, 'shoes', 'https://imgs.search.brave.com/hx6C3dl9AYpqndgzzTeIpGh66R5h327TdaVp-1R-qEA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NTF6T3dpWGVXUkwu/anBn', 'shoes');
INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (4, 'shoes', 'https://imgs.search.brave.com/hx6C3dl9AYpqndgzzTeIpGh66R5h327TdaVp-1R-qEA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NTF6T3dpWGVXUkwu/anBn', 'shoes');
INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (4, 'shoes', 'https://imgs.search.brave.com/hx6C3dl9AYpqndgzzTeIpGh66R5h327TdaVp-1R-qEA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NTF6T3dpWGVXUkwu/anBn', 'shoes');

INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (5, 'socks', 'https://imgs.search.brave.com/Y8XqKOgL8b88lRgZ3UCUo-bjqeJ1sx7b1ff_lM_VYLM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zb2Nr/Zmx5LmNvbS9jZG4v/c2hvcC9wcm9kdWN0/cy9Db2xvcmZ1bFNx/dWFyZTFfNzAweDcw/MC5qcGc_dj0xNjMz/NzM0MTc2', 'socks');
INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (5, 'socks', 'https://imgs.search.brave.com/Y8XqKOgL8b88lRgZ3UCUo-bjqeJ1sx7b1ff_lM_VYLM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zb2Nr/Zmx5LmNvbS9jZG4v/c2hvcC9wcm9kdWN0/cy9Db2xvcmZ1bFNx/dWFyZTFfNzAweDcw/MC5qcGc_dj0xNjMz/NzM0MTc2', 'socks');
INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (5, 'socks', 'https://imgs.search.brave.com/Y8XqKOgL8b88lRgZ3UCUo-bjqeJ1sx7b1ff_lM_VYLM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zb2Nr/Zmx5LmNvbS9jZG4v/c2hvcC9wcm9kdWN0/cy9Db2xvcmZ1bFNx/dWFyZTFfNzAweDcw/MC5qcGc_dj0xNjMz/NzM0MTc2', 'socks');
INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (5, 'socks', 'https://imgs.search.brave.com/Y8XqKOgL8b88lRgZ3UCUo-bjqeJ1sx7b1ff_lM_VYLM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zb2Nr/Zmx5LmNvbS9jZG4v/c2hvcC9wcm9kdWN0/cy9Db2xvcmZ1bFNx/dWFyZTFfNzAweDcw/MC5qcGc_dj0xNjMz/NzM0MTc2', 'socks');
INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (5, 'socks', 'https://imgs.search.brave.com/Y8XqKOgL8b88lRgZ3UCUo-bjqeJ1sx7b1ff_lM_VYLM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zb2Nr/Zmx5LmNvbS9jZG4v/c2hvcC9wcm9kdWN0/cy9Db2xvcmZ1bFNx/dWFyZTFfNzAweDcw/MC5qcGc_dj0xNjMz/NzM0MTc2', 'socks');
INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (5, 'socks', 'https://imgs.search.brave.com/Y8XqKOgL8b88lRgZ3UCUo-bjqeJ1sx7b1ff_lM_VYLM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zb2Nr/Zmx5LmNvbS9jZG4v/c2hvcC9wcm9kdWN0/cy9Db2xvcmZ1bFNx/dWFyZTFfNzAweDcw/MC5qcGc_dj0xNjMz/NzM0MTc2', 'socks');
INSERT INTO items (collection_id, item_name, image_url, description)
VALUES (5, 'socks', 'https://imgs.search.brave.com/Y8XqKOgL8b88lRgZ3UCUo-bjqeJ1sx7b1ff_lM_VYLM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zb2Nr/Zmx5LmNvbS9jZG4v/c2hvcC9wcm9kdWN0/cy9Db2xvcmZ1bFNx/dWFyZTFfNzAweDcw/MC5qcGc_dj0xNjMz/NzM0MTc2', 'socks');







