create table pictures(
  fileid text PRIMARY KEY,
  url text,
  name text,
  tags text,
  collection text
);

CREATE VIRTUAL TABLE pictures_search USING fts5(
  title,
  author,
  tags,
  collection,
  content='pictures',
  content_fileid='fileid'
);

create table sizes(
  prodid text primary key,
  price integer,
  size text,
  url text,
  fileid text
);

create table homepage (
  featured_collection text,
  featured_pictures text
);

