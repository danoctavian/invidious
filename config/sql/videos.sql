-- Table: public.videos

-- DROP TABLE public.videos;

CREATE TABLE public.videos
(
    id text COLLATE pg_catalog."default" NOT NULL,
    info text COLLATE pg_catalog."default",
    updated timestamp with time zone,
    title text COLLATE pg_catalog."default",
    views bigint,
    likes integer,
    dislikes integer,
    wilson_score double precision,
    published timestamp with time zone,
    description text COLLATE pg_catalog."default",
    language text COLLATE pg_catalog."default",
    author text COLLATE pg_catalog."default",
    ucid text COLLATE pg_catalog."default",
    allowed_regions text[] COLLATE pg_catalog."default",
    is_family_friendly boolean,
    genre text COLLATE pg_catalog."default",
    genre_url text COLLATE pg_catalog."default",
    license text COLLATE pg_catalog."default",
    CONSTRAINT videos_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

GRANT ALL ON TABLE public.videos TO kemal;

-- Index: id_idx

-- DROP INDEX public.id_idx;

CREATE UNIQUE INDEX id_idx
    ON public.videos USING btree
    (id COLLATE pg_catalog."default")
    TABLESPACE pg_default;