-- (1) SUPPRIMER LES EMPLOYES QUI ONT UN ID_ SUPERIEUR A 990.

-- (2) SUPPRIMER LES EMPLPOYES DU SERVICE COMMERCIAL QUI ONT UN SALAIRE INFERIEUR A 2000 ET QUI ONT ETE EMBAUCHE ENTRE 2001 & 2005.

DELETE FROM employes WHERE id_employes > 990;

DELETE FROM employes WHERE service = 'commercial' AND salaire > 2000 AND date_embauche BETWEEN '2001-01-01' AND '2005-12-31';
