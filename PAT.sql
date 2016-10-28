/*
Navicat PGSQL Data Transfer

Source Server         : Lounaistieto1
Source Server Version : 90310
Source Host           : lounaistieto1.c4umjdwgjqlg.eu-west-1.rds.amazonaws.com:5432
Source Database       : PAT
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90310
File Encoding         : 65001

Date: 2016-10-28 10:33:29
*/


-- ----------------------------
-- Table structure for Asiointilomake
-- ----------------------------
DROP TABLE IF EXISTS "public"."Asiointilomake";
CREATE TABLE "public"."Asiointilomake" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"url" varchar(250) COLLATE "default",
"nimeke" varchar(255) COLLATE "default",
"mediatyyppi_id" varchar(250) COLLATE "default",
"kieli_id" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Asiointityyppi
-- ----------------------------
DROP TABLE IF EXISTS "public"."Asiointityyppi";
CREATE TABLE "public"."Asiointityyppi" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"kuvaus_kielikoodi" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Aukioloaika
-- ----------------------------
DROP TABLE IF EXISTS "public"."Aukioloaika";
CREATE TABLE "public"."Aukioloaika" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"avaamisaika" varchar(100) COLLATE "default",
"sulkemisaika" varchar(100) COLLATE "default",
"viikonpaiva" varchar(100) COLLATE "default",
"voimassaoloAlkamishetki" varchar(100) COLLATE "default",
"voimassaoloPaattymishetki" varchar(100) COLLATE "default",
"toistuvuustyyppi_id" varchar(250) COLLATE "default",
"palvelutarjous_id" varchar(250) COLLATE "default",
"fyysinenPaikka_id" varchar(250) COLLATE "default",
"varaus_id" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Esteettomyyskuvaus
-- ----------------------------
DROP TABLE IF EXISTS "public"."Esteettomyyskuvaus";
CREATE TABLE "public"."Esteettomyyskuvaus" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"kuvaus_kielikoodi" int4,
"Esteettomyysnimike_id" varchar(250) COLLATE "default",
"FyysinenPaikka_id" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Esteettomyysnimike
-- ----------------------------
DROP TABLE IF EXISTS "public"."Esteettomyysnimike";
CREATE TABLE "public"."Esteettomyysnimike" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"nimike_kielikoodi" int4,
"nahdollisetArvot" text COLLATE "default",
"onkoParametri" varchar(100) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Esteettomyysparametri
-- ----------------------------
DROP TABLE IF EXISTS "public"."Esteettomyysparametri";
CREATE TABLE "public"."Esteettomyysparametri" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"Esteettomyysnimike_id" varchar(250) COLLATE "default",
"FyysinenPaikka_id" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for FyysinenPaikka
-- ----------------------------
DROP TABLE IF EXISTS "public"."FyysinenPaikka";
CREATE TABLE "public"."FyysinenPaikka" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"leveysaste" varchar(20) COLLATE "default",
"pituusaste" varchar(20) COLLATE "default",
"nimi_kielikoodi" int4,
"kuvaus_kielikoodi" int4,
"koordinaattiasetettukasin" varchar(100) COLLATE "default",
"vastuuhenkilo" varchar(100) COLLATE "default",
"koordinaattijarjestelma_id" varchar(250) COLLATE "default",
"omistaja_id" varchar(250) COLLATE "default",
"hallinnoija_id" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Henkilo
-- ----------------------------
DROP TABLE IF EXISTS "public"."Henkilo";
CREATE TABLE "public"."Henkilo" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"oid" varchar(64) COLLATE "default",
"tunniste" varchar(40) COLLATE "default",
"ammatti" varchar(50) COLLATE "default",
"henkilotunnus" varchar(11) COLLATE "default",
"nimet" varchar(100) COLLATE "default",
"kutsumanimi" varchar(30) COLLATE "default",
"sukunimi" varchar(100) COLLATE "default",
"syntymaaika" date,
"tilaPvm" date,
"sukupuoli_id" varchar(250) COLLATE "default",
"kotikunta_id" varchar(250) COLLATE "default",
"kansalaisuus_id" varchar(250) COLLATE "default",
"siviilisaaty_id" varchar(250) COLLATE "default",
"tila_id" varchar(250) COLLATE "default",
"turvakielto_id" varchar(250) COLLATE "default",
"aidinkieli_id" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for HenkilonTila
-- ----------------------------
DROP TABLE IF EXISTS "public"."HenkilonTila";
CREATE TABLE "public"."HenkilonTila" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"kuvaus_kielikoodi" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for HenkiloOsoite
-- ----------------------------
DROP TABLE IF EXISTS "public"."HenkiloOsoite";
CREATE TABLE "public"."HenkiloOsoite" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"KatuOsoite" varchar(100) COLLATE "default",
"KatuOsoite2" varchar(100) COLLATE "default",
"KatuOsoite3" varchar(100) COLLATE "default",
"postiLokero" varchar(10) COLLATE "default",
"postiNumero" varchar(20) COLLATE "default",
"postiToimipaikka" varchar(40) COLLATE "default",
"seutukunta" varchar(20) COLLATE "default",
"henkilo_id" varchar(250) COLLATE "default",
"osoitetyyppi_id" varchar(250) COLLATE "default",
"Maa_id" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for HenkiloPuhelinnumero
-- ----------------------------
DROP TABLE IF EXISTS "public"."HenkiloPuhelinnumero";
CREATE TABLE "public"."HenkiloPuhelinnumero" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"numero" varchar(25) COLLATE "default",
"henkilo_id" varchar(250) COLLATE "default",
"puhelinnumerotyyppi_id" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for HenkiloSahkoinenYhteystieto
-- ----------------------------
DROP TABLE IF EXISTS "public"."HenkiloSahkoinenYhteystieto";
CREATE TABLE "public"."HenkiloSahkoinenYhteystieto" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"yhteystieto" text COLLATE "default",
"henkilo_id" varchar(250) COLLATE "default",
"henkilotoimijasuhde_id" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for HenkiloToimijaSuhde
-- ----------------------------
DROP TABLE IF EXISTS "public"."HenkiloToimijaSuhde";
CREATE TABLE "public"."HenkiloToimijaSuhde" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"tunniste" varchar(40) COLLATE "default",
"oid" varchar(64) COLLATE "default",
"voimassaoloAlkaa" date,
"voimassaoloPaattyy" date,
"IsaHenkilo_id" varchar(250) COLLATE "default",
"LapsiHenkilo_id" varchar(250) COLLATE "default",
"LapsiYhdistys_id" varchar(250) COLLATE "default",
"Suhdetyyppi_id" varchar(250) COLLATE "default",
"Sijainen_id" varchar(250) COLLATE "default",
"Suhdeluokka_id" varchar(250) COLLATE "default",
"SahkoinenYhteystieto_id" varchar(250) COLLATE "default",
"Ylataso_id" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Hinta
-- ----------------------------
DROP TABLE IF EXISTS "public"."Hinta";
CREATE TABLE "public"."Hinta" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"hinta_kielikoodi" varchar(100) COLLATE "default",
"linkki_kielikoodi" varchar(100) COLLATE "default",
"kuvaus_kielikoodi" varchar(100) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Kanavatyyppi
-- ----------------------------
DROP TABLE IF EXISTS "public"."Kanavatyyppi";
CREATE TABLE "public"."Kanavatyyppi" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"kuvaus_kielikoodi" varchar(100) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Kaupunginosa
-- ----------------------------
DROP TABLE IF EXISTS "public"."Kaupunginosa";
CREATE TABLE "public"."Kaupunginosa" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"tunniste" varchar(100) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for KenttienKieliVersiot
-- ----------------------------
DROP TABLE IF EXISTS "public"."KenttienKieliVersiot";
CREATE TABLE "public"."KenttienKieliVersiot" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"teksti" text COLLATE "default",
"kenttakoodi" int4,
"kieli_id" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Kieli
-- ----------------------------
DROP TABLE IF EXISTS "public"."Kieli";
CREATE TABLE "public"."Kieli" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"kielikoodi" varchar(100) COLLATE "default",
"teksti" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Kohderyhma
-- ----------------------------
DROP TABLE IF EXISTS "public"."Kohderyhma";
CREATE TABLE "public"."Kohderyhma" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"nimi_kielikoodi" varchar(100) COLLATE "default",
"onkoKohderyhmatyyppi" varchar(100) COLLATE "default",
"ylataso_id" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Koordinaattijarjestelma
-- ----------------------------
DROP TABLE IF EXISTS "public"."Koordinaattijarjestelma";
CREATE TABLE "public"."Koordinaattijarjestelma" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Kunta
-- ----------------------------
DROP TABLE IF EXISTS "public"."Kunta";
CREATE TABLE "public"."Kunta" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"nimi_fi" varchar(100) COLLATE "default",
"nimi_sv" varchar(100) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Lisatieto
-- ----------------------------
DROP TABLE IF EXISTS "public"."Lisatieto";
CREATE TABLE "public"."Lisatieto" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"kuvaus_kielikoodi" int4,
"fyysinenpaikka_id" varchar(250) COLLATE "default",
"lisatietotyyppi_id" varchar(250) COLLATE "default",
"mediatyyppi_id" varchar(250) COLLATE "default",
"palvelukanava_id" varchar(250) COLLATE "default",
"palvelutarjous_id" varchar(250) COLLATE "default",
"toimija_id" varchar(250) COLLATE "default",
"palvelu_id" varchar(250) COLLATE "default",
"henkilotoimijasuhde_id" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for LisatietoTyyppi
-- ----------------------------
DROP TABLE IF EXISTS "public"."LisatietoTyyppi";
CREATE TABLE "public"."LisatietoTyyppi" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Maa
-- ----------------------------
DROP TABLE IF EXISTS "public"."Maa";
CREATE TABLE "public"."Maa" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"maakoodi2" varchar(2) COLLATE "default",
"maakoodi3" varchar(3) COLLATE "default",
"nimi_fi" varchar(100) COLLATE "default",
"nimi_sv" varchar(100) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Mediatyyppi
-- ----------------------------
DROP TABLE IF EXISTS "public"."Mediatyyppi";
CREATE TABLE "public"."Mediatyyppi" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for OrganisaatioLisatieto
-- ----------------------------
DROP TABLE IF EXISTS "public"."OrganisaatioLisatieto";
CREATE TABLE "public"."OrganisaatioLisatieto" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"lisatieto" text COLLATE "default",
"yhdistys_id" varchar(250) COLLATE "default",
"yritys_id" varchar(250) COLLATE "default",
"lisatietotyyppi_id" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for OrganisaatioMuoto
-- ----------------------------
DROP TABLE IF EXISTS "public"."OrganisaatioMuoto";
CREATE TABLE "public"."OrganisaatioMuoto" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"teksti_fi" varchar(100) COLLATE "default",
"teksti_sv" varchar(100) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for OrganisaatioOsoite
-- ----------------------------
DROP TABLE IF EXISTS "public"."OrganisaatioOsoite";
CREATE TABLE "public"."OrganisaatioOsoite" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"katuOsoite" varchar(100) COLLATE "default",
"katuOsoite2" varchar(100) COLLATE "default",
"katuOsoite3" varchar(100) COLLATE "default",
"postiLokero" varchar(10) COLLATE "default",
"postiNumero" varchar(20) COLLATE "default",
"postiToimipaikka" varchar(40) COLLATE "default",
"seutukunta" varchar(20) COLLATE "default",
"yritys_id" varchar(250) COLLATE "default",
"yhdistys_id" varchar(250) COLLATE "default",
"osoitetyyppi_id" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for OrganisaatioPuhelinnumero
-- ----------------------------
DROP TABLE IF EXISTS "public"."OrganisaatioPuhelinnumero";
CREATE TABLE "public"."OrganisaatioPuhelinnumero" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"numero" varchar(25) COLLATE "default",
"yhdistys_id" varchar(250) COLLATE "default",
"yritys_id" varchar(250) COLLATE "default",
"numerotyyppi_id" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for OrganisaatioSahkoinenYhteystieto
-- ----------------------------
DROP TABLE IF EXISTS "public"."OrganisaatioSahkoinenYhteystieto";
CREATE TABLE "public"."OrganisaatioSahkoinenYhteystieto" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"yhteystieto" text COLLATE "default",
"yhditys_id" varchar(250) COLLATE "default",
"yritys_id" varchar(250) COLLATE "default",
"yhteystietotyyppi_id" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for OrganisaatioToimijaSuhde
-- ----------------------------
DROP TABLE IF EXISTS "public"."OrganisaatioToimijaSuhde";
CREATE TABLE "public"."OrganisaatioToimijaSuhde" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"tunniste" varchar(40) COLLATE "default",
"oid" varchar(64) COLLATE "default",
"isayritys_id" varchar(250) COLLATE "default",
"isayhdistys_id" varchar(250) COLLATE "default",
"lapsihenkilo_id" varchar(250) COLLATE "default",
"lapsiyritys_id" varchar(250) COLLATE "default",
"lapsiyhdistys_id" varchar(250) COLLATE "default",
"suhdetyyppi_id" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Osoite
-- ----------------------------
DROP TABLE IF EXISTS "public"."Osoite";
CREATE TABLE "public"."Osoite" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"katuosoite" varchar(100) COLLATE "default",
"katuosoite2" varchar(100) COLLATE "default",
"katuosoite3" varchar(100) COLLATE "default",
"postilokeroOsoite" varchar(100) COLLATE "default",
"postinumero" varchar(100) COLLATE "default",
"postitoimipaikka" varchar(100) COLLATE "default",
"osoitetyyppi_id" varchar(250) COLLATE "default",
"kunta_id" varchar(250) COLLATE "default",
"maa_id" varchar(250) COLLATE "default",
"kaupunginosa_id" varchar(250) COLLATE "default",
"tilastoitavaalue_id" varchar(250) COLLATE "default",
"fyysinenpaikka_id" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for OsoiteTyyppi
-- ----------------------------
DROP TABLE IF EXISTS "public"."OsoiteTyyppi";
CREATE TABLE "public"."OsoiteTyyppi" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"teksti_fi" varchar(100) COLLATE "default",
"teksti_sv" varchar(100) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Palvelu
-- ----------------------------
DROP TABLE IF EXISTS "public"."Palvelu";
CREATE TABLE "public"."Palvelu" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"kuvaus_kielikoodi" int4,
"nimi_kielikoodi" int4,
"ylataso_id" varchar(250) COLLATE "default",
"palvelutyyppi_id" varchar(250) COLLATE "default",
"toteustapa_id" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Palvelukanava
-- ----------------------------
DROP TABLE IF EXISTS "public"."Palvelukanava";
CREATE TABLE "public"."Palvelukanava" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"vaatiiTunnistautumisen" varchar(200) COLLATE "default",
"palvelutaso" varchar(200) COLLATE "default",
"nimi_kielikoodi" int4,
"kuvaus_kielikoodi" int4,
"palvelukanavanTila" varchar(100) COLLATE "default",
"Tietolahde" varchar(100) COLLATE "default",
"fyysinenpaikka_id" varchar(250) COLLATE "default",
"kanavatyyppi_id" varchar(250) COLLATE "default",
"tunnistautumistaso_id" varchar(250) COLLATE "default",
"tunnistautumisvaline_id" varchar(250) COLLATE "default",
"asiointityyppi_id" varchar(250) COLLATE "default",
"sahkoposti_id" varchar(250) COLLATE "default",
"kieli_id" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for PalveluKohderyhmaSuhde
-- ----------------------------
DROP TABLE IF EXISTS "public"."PalveluKohderyhmaSuhde";
CREATE TABLE "public"."PalveluKohderyhmaSuhde" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"palvelu_id" varchar(250) COLLATE "default",
"palvelutarjous_id" varchar(250) COLLATE "default",
"kohderyhma_id" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Palvelupaketti
-- ----------------------------
DROP TABLE IF EXISTS "public"."Palvelupaketti";
CREATE TABLE "public"."Palvelupaketti" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"kuvaus_kielikoodi" int4,
"ylataso_id" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Palvelusuunnitelma
-- ----------------------------
DROP TABLE IF EXISTS "public"."Palvelusuunnitelma";
CREATE TABLE "public"."Palvelusuunnitelma" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"kuvaus_kielikoodi" int4,
"suunnitelmatyyppi_id" varchar(250) COLLATE "default",
"palvelutarjous_id" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Palvelutarjous
-- ----------------------------
DROP TABLE IF EXISTS "public"."Palvelutarjous";
CREATE TABLE "public"."Palvelutarjous" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"kuvaus_kielikoodi" int4,
"palveluTarjouksenTila" varchar(100) COLLATE "default",
"palvelusaanninehdot" varchar(100) COLLATE "default",
"maksullisuus" varchar(100) COLLATE "default",
"nimi_kielikoodi" varchar(100) COLLATE "default",
"tietolahde_id" varchar(250) COLLATE "default",
"palvelupaketti_id" varchar(250) COLLATE "default",
"toteutustapa_id" varchar(250) COLLATE "default",
"palvelukanava_id" varchar(250) COLLATE "default",
"rinnakkaistapahtuma_id" varchar(250) COLLATE "default",
"ylataso_id" varchar(250) COLLATE "default",
"tuottaja_id" varchar(250) COLLATE "default",
"jarjestaja_id" varchar(250) COLLATE "default",
"hinta_id" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for PalvelutarjousKieliSuhde
-- ----------------------------
DROP TABLE IF EXISTS "public"."PalvelutarjousKieliSuhde";
CREATE TABLE "public"."PalvelutarjousKieliSuhde" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"palvelutarjous_id" varchar(250) COLLATE "default",
"palvelukanava_id" varchar(250) COLLATE "default",
"kieli_id" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Palvelutyyppi
-- ----------------------------
DROP TABLE IF EXISTS "public"."Palvelutyyppi";
CREATE TABLE "public"."Palvelutyyppi" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"kuvaus_kielikoodi" int4,
"ylataso_id" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Puhelinnumero
-- ----------------------------
DROP TABLE IF EXISTS "public"."Puhelinnumero";
CREATE TABLE "public"."Puhelinnumero" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"numero" varchar(100) COLLATE "default",
"numerotyyppi_id" varchar(250) COLLATE "default",
"fyysinenpaikka_id" varchar(250) COLLATE "default",
"palvelukanava_id" varchar(250) COLLATE "default",
"henkilotoimijasuhde_id" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for PuhelinnumeroTyyppi
-- ----------------------------
DROP TABLE IF EXISTS "public"."PuhelinnumeroTyyppi";
CREATE TABLE "public"."PuhelinnumeroTyyppi" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"teksti_fi" varchar(100) COLLATE "default",
"teksti_sv" varchar(100) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for SahkoinenYhteystietoTyyppi
-- ----------------------------
DROP TABLE IF EXISTS "public"."SahkoinenYhteystietoTyyppi";
CREATE TABLE "public"."SahkoinenYhteystietoTyyppi" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"teksti_fi" varchar(100) COLLATE "default",
"teksti_sv" varchar(100) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Sahkoposti
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sahkoposti";
CREATE TABLE "public"."Sahkoposti" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Siviilisaaty
-- ----------------------------
DROP TABLE IF EXISTS "public"."Siviilisaaty";
CREATE TABLE "public"."Siviilisaaty" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"teksti_fi" varchar(100) COLLATE "default",
"teksti_sv" varchar(100) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Suhdeluokka
-- ----------------------------
DROP TABLE IF EXISTS "public"."Suhdeluokka";
CREATE TABLE "public"."Suhdeluokka" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Suhdetyyppi
-- ----------------------------
DROP TABLE IF EXISTS "public"."Suhdetyyppi";
CREATE TABLE "public"."Suhdetyyppi" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"teksti_fi" varchar(100) COLLATE "default",
"teksti_sv" varchar(100) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Sukupuoli
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sukupuoli";
CREATE TABLE "public"."Sukupuoli" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"teksti_fi" varchar(100) COLLATE "default",
"teksti_sv" varchar(100) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Suunnitelmatyyppi
-- ----------------------------
DROP TABLE IF EXISTS "public"."Suunnitelmatyyppi";
CREATE TABLE "public"."Suunnitelmatyyppi" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Tietolahde
-- ----------------------------
DROP TABLE IF EXISTS "public"."Tietolahde";
CREATE TABLE "public"."Tietolahde" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for TilastoitavaAlue
-- ----------------------------
DROP TABLE IF EXISTS "public"."TilastoitavaAlue";
CREATE TABLE "public"."TilastoitavaAlue" (
"TilaName" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"tunniste" varchar(100) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Toimija
-- ----------------------------
DROP TABLE IF EXISTS "public"."Toimija";
CREATE TABLE "public"."Toimija" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"kuvaus_kielikoodi" varchar(100) COLLATE "default",
"nimi_kielikoodi" varchar(100) COLLATE "default",
"toimijarooli" varchar(100) COLLATE "default",
"henkilo_id" varchar(250) COLLATE "default",
"yritys_id" varchar(250) COLLATE "default",
"yhdistys_id" varchar(250) COLLATE "default",
"tuottajatyyppi_id" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Toistuvuustyyppi
-- ----------------------------
DROP TABLE IF EXISTS "public"."Toistuvuustyyppi";
CREATE TABLE "public"."Toistuvuustyyppi" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Toteutustapa
-- ----------------------------
DROP TABLE IF EXISTS "public"."Toteutustapa";
CREATE TABLE "public"."Toteutustapa" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"kuvaus_kielikoodi" varchar(100) COLLATE "default",
"pakollisuusTarjous" varchar(200) COLLATE "default",
"pakollisuusPalvelu" varchar(200) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Tunnistautumistaso
-- ----------------------------
DROP TABLE IF EXISTS "public"."Tunnistautumistaso";
CREATE TABLE "public"."Tunnistautumistaso" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"kuvaus_kielikoodi" varchar(100) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Tunnistautumisvaline
-- ----------------------------
DROP TABLE IF EXISTS "public"."Tunnistautumisvaline";
CREATE TABLE "public"."Tunnistautumisvaline" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"kuvaus_kielikoodi" varchar(100) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Tuottajatyyppi
-- ----------------------------
DROP TABLE IF EXISTS "public"."Tuottajatyyppi";
CREATE TABLE "public"."Tuottajatyyppi" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"kuvaus_kielikoodi" varchar(100) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Turvakielto
-- ----------------------------
DROP TABLE IF EXISTS "public"."Turvakielto";
CREATE TABLE "public"."Turvakielto" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"loppumisPvm" date
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Varaus
-- ----------------------------
DROP TABLE IF EXISTS "public"."Varaus";
CREATE TABLE "public"."Varaus" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"kuvaus_kielikoodi" varchar(100) COLLATE "default",
"fyysinenpaikka_id" varchar(250) COLLATE "default",
"toimija_id" varchar(250) COLLATE "default",
"palvelutarjous_id" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Yhdistys
-- ----------------------------
DROP TABLE IF EXISTS "public"."Yhdistys";
CREATE TABLE "public"."Yhdistys" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"tunniste" varchar(40) COLLATE "default",
"oid" int4,
"nimi_fi" varchar(100) COLLATE "default",
"nimi_sv" varchar(100) COLLATE "default",
"nimi_en" varchar(100) COLLATE "default",
"rekisterinumero" varchar(10) COLLATE "default",
"ytunnus" varchar(16) COLLATE "default",
"rekisterointiPvm" date,
"kotikunta_id" varchar(250) COLLATE "default",
"kotimaa_id" varchar(250) COLLATE "default",
"asiointikieli_id" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Yritys
-- ----------------------------
DROP TABLE IF EXISTS "public"."Yritys";
CREATE TABLE "public"."Yritys" (
"Name" varchar(250) COLLATE "default",
"Code" varchar(250) COLLATE "default" NOT NULL,
"tunniste" varchar(40) COLLATE "default",
"oid" int4,
"ytunnus" varchar(16) COLLATE "default",
"rekisterointiPvm" date,
"nimi_kielikoodi" int4,
"kotikunta_id" varchar(250) COLLATE "default",
"kotimaa_id" varchar(250) COLLATE "default",
"organisaatiomuoto_id" varchar(250) COLLATE "default",
"asiointikieli_id" varchar(250) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Asiointilomake
-- ----------------------------
ALTER TABLE "public"."Asiointilomake" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Asiointityyppi
-- ----------------------------
ALTER TABLE "public"."Asiointityyppi" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Aukioloaika
-- ----------------------------
ALTER TABLE "public"."Aukioloaika" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Esteettomyyskuvaus
-- ----------------------------
ALTER TABLE "public"."Esteettomyyskuvaus" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Esteettomyysnimike
-- ----------------------------
ALTER TABLE "public"."Esteettomyysnimike" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Esteettomyysparametri
-- ----------------------------
ALTER TABLE "public"."Esteettomyysparametri" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table FyysinenPaikka
-- ----------------------------
ALTER TABLE "public"."FyysinenPaikka" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Henkilo
-- ----------------------------
ALTER TABLE "public"."Henkilo" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table HenkilonTila
-- ----------------------------
ALTER TABLE "public"."HenkilonTila" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table HenkiloOsoite
-- ----------------------------
ALTER TABLE "public"."HenkiloOsoite" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table HenkiloPuhelinnumero
-- ----------------------------
ALTER TABLE "public"."HenkiloPuhelinnumero" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table HenkiloSahkoinenYhteystieto
-- ----------------------------
ALTER TABLE "public"."HenkiloSahkoinenYhteystieto" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table HenkiloToimijaSuhde
-- ----------------------------
ALTER TABLE "public"."HenkiloToimijaSuhde" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Hinta
-- ----------------------------
ALTER TABLE "public"."Hinta" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Kanavatyyppi
-- ----------------------------
ALTER TABLE "public"."Kanavatyyppi" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Kaupunginosa
-- ----------------------------
ALTER TABLE "public"."Kaupunginosa" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table KenttienKieliVersiot
-- ----------------------------
ALTER TABLE "public"."KenttienKieliVersiot" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Kieli
-- ----------------------------
ALTER TABLE "public"."Kieli" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Kohderyhma
-- ----------------------------
ALTER TABLE "public"."Kohderyhma" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Koordinaattijarjestelma
-- ----------------------------
ALTER TABLE "public"."Koordinaattijarjestelma" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Kunta
-- ----------------------------
ALTER TABLE "public"."Kunta" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Lisatieto
-- ----------------------------
ALTER TABLE "public"."Lisatieto" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table LisatietoTyyppi
-- ----------------------------
ALTER TABLE "public"."LisatietoTyyppi" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Maa
-- ----------------------------
ALTER TABLE "public"."Maa" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Mediatyyppi
-- ----------------------------
ALTER TABLE "public"."Mediatyyppi" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table OrganisaatioLisatieto
-- ----------------------------
ALTER TABLE "public"."OrganisaatioLisatieto" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table OrganisaatioMuoto
-- ----------------------------
ALTER TABLE "public"."OrganisaatioMuoto" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table OrganisaatioOsoite
-- ----------------------------
ALTER TABLE "public"."OrganisaatioOsoite" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table OrganisaatioPuhelinnumero
-- ----------------------------
ALTER TABLE "public"."OrganisaatioPuhelinnumero" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table OrganisaatioSahkoinenYhteystieto
-- ----------------------------
ALTER TABLE "public"."OrganisaatioSahkoinenYhteystieto" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table OrganisaatioToimijaSuhde
-- ----------------------------
ALTER TABLE "public"."OrganisaatioToimijaSuhde" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Osoite
-- ----------------------------
ALTER TABLE "public"."Osoite" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table OsoiteTyyppi
-- ----------------------------
ALTER TABLE "public"."OsoiteTyyppi" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Palvelu
-- ----------------------------
ALTER TABLE "public"."Palvelu" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Palvelukanava
-- ----------------------------
ALTER TABLE "public"."Palvelukanava" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table PalveluKohderyhmaSuhde
-- ----------------------------
ALTER TABLE "public"."PalveluKohderyhmaSuhde" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Palvelupaketti
-- ----------------------------
ALTER TABLE "public"."Palvelupaketti" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Palvelusuunnitelma
-- ----------------------------
ALTER TABLE "public"."Palvelusuunnitelma" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Palvelutarjous
-- ----------------------------
ALTER TABLE "public"."Palvelutarjous" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table PalvelutarjousKieliSuhde
-- ----------------------------
ALTER TABLE "public"."PalvelutarjousKieliSuhde" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Palvelutyyppi
-- ----------------------------
ALTER TABLE "public"."Palvelutyyppi" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Puhelinnumero
-- ----------------------------
ALTER TABLE "public"."Puhelinnumero" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table PuhelinnumeroTyyppi
-- ----------------------------
ALTER TABLE "public"."PuhelinnumeroTyyppi" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table SahkoinenYhteystietoTyyppi
-- ----------------------------
ALTER TABLE "public"."SahkoinenYhteystietoTyyppi" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Sahkoposti
-- ----------------------------
ALTER TABLE "public"."Sahkoposti" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Siviilisaaty
-- ----------------------------
ALTER TABLE "public"."Siviilisaaty" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Suhdeluokka
-- ----------------------------
ALTER TABLE "public"."Suhdeluokka" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Suhdetyyppi
-- ----------------------------
ALTER TABLE "public"."Suhdetyyppi" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Sukupuoli
-- ----------------------------
ALTER TABLE "public"."Sukupuoli" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Suunnitelmatyyppi
-- ----------------------------
ALTER TABLE "public"."Suunnitelmatyyppi" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Tietolahde
-- ----------------------------
ALTER TABLE "public"."Tietolahde" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table TilastoitavaAlue
-- ----------------------------
ALTER TABLE "public"."TilastoitavaAlue" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Toimija
-- ----------------------------
ALTER TABLE "public"."Toimija" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Toistuvuustyyppi
-- ----------------------------
ALTER TABLE "public"."Toistuvuustyyppi" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Toteutustapa
-- ----------------------------
ALTER TABLE "public"."Toteutustapa" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Tunnistautumistaso
-- ----------------------------
ALTER TABLE "public"."Tunnistautumistaso" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Tunnistautumisvaline
-- ----------------------------
ALTER TABLE "public"."Tunnistautumisvaline" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Tuottajatyyppi
-- ----------------------------
ALTER TABLE "public"."Tuottajatyyppi" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Turvakielto
-- ----------------------------
ALTER TABLE "public"."Turvakielto" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Varaus
-- ----------------------------
ALTER TABLE "public"."Varaus" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Yhdistys
-- ----------------------------
ALTER TABLE "public"."Yhdistys" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Primary Key structure for table Yritys
-- ----------------------------
ALTER TABLE "public"."Yritys" ADD PRIMARY KEY ("Code");

-- ----------------------------
-- Foreign Key structure for table "public"."Asiointilomake"
-- ----------------------------
ALTER TABLE "public"."Asiointilomake" ADD FOREIGN KEY ("mediatyyppi_id") REFERENCES "public"."Mediatyyppi" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."Aukioloaika"
-- ----------------------------
ALTER TABLE "public"."Aukioloaika" ADD FOREIGN KEY ("fyysinenPaikka_id") REFERENCES "public"."FyysinenPaikka" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Aukioloaika" ADD FOREIGN KEY ("palvelutarjous_id") REFERENCES "public"."Palvelutarjous" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Aukioloaika" ADD FOREIGN KEY ("toistuvuustyyppi_id") REFERENCES "public"."Toistuvuustyyppi" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."Esteettomyyskuvaus"
-- ----------------------------
ALTER TABLE "public"."Esteettomyyskuvaus" ADD FOREIGN KEY ("Esteettomyysnimike_id") REFERENCES "public"."Esteettomyysnimike" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Esteettomyyskuvaus" ADD FOREIGN KEY ("FyysinenPaikka_id") REFERENCES "public"."FyysinenPaikka" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."Esteettomyysparametri"
-- ----------------------------
ALTER TABLE "public"."Esteettomyysparametri" ADD FOREIGN KEY ("FyysinenPaikka_id") REFERENCES "public"."FyysinenPaikka" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Esteettomyysparametri" ADD FOREIGN KEY ("Esteettomyysnimike_id") REFERENCES "public"."Esteettomyysnimike" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."FyysinenPaikka"
-- ----------------------------
ALTER TABLE "public"."FyysinenPaikka" ADD FOREIGN KEY ("koordinaattijarjestelma_id") REFERENCES "public"."Koordinaattijarjestelma" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."Henkilo"
-- ----------------------------
ALTER TABLE "public"."Henkilo" ADD FOREIGN KEY ("turvakielto_id") REFERENCES "public"."Turvakielto" ("Code") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."Henkilo" ADD FOREIGN KEY ("sukupuoli_id") REFERENCES "public"."Sukupuoli" ("Code") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."Henkilo" ADD FOREIGN KEY ("kansalaisuus_id") REFERENCES "public"."Maa" ("Code") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."Henkilo" ADD FOREIGN KEY ("aidinkieli_id") REFERENCES "public"."Kieli" ("Code") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."Henkilo" ADD FOREIGN KEY ("siviilisaaty_id") REFERENCES "public"."Siviilisaaty" ("Code") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."Henkilo" ADD FOREIGN KEY ("tila_id") REFERENCES "public"."HenkilonTila" ("Code") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."HenkiloOsoite"
-- ----------------------------
ALTER TABLE "public"."HenkiloOsoite" ADD FOREIGN KEY ("Maa_id") REFERENCES "public"."Maa" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."HenkiloOsoite" ADD FOREIGN KEY ("henkilo_id") REFERENCES "public"."Henkilo" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."HenkiloOsoite" ADD FOREIGN KEY ("osoitetyyppi_id") REFERENCES "public"."OsoiteTyyppi" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."HenkiloPuhelinnumero"
-- ----------------------------
ALTER TABLE "public"."HenkiloPuhelinnumero" ADD FOREIGN KEY ("puhelinnumerotyyppi_id") REFERENCES "public"."PuhelinnumeroTyyppi" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."HenkiloPuhelinnumero" ADD FOREIGN KEY ("henkilo_id") REFERENCES "public"."Henkilo" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."HenkiloSahkoinenYhteystieto"
-- ----------------------------
ALTER TABLE "public"."HenkiloSahkoinenYhteystieto" ADD FOREIGN KEY ("henkilo_id") REFERENCES "public"."Henkilo" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."HenkiloSahkoinenYhteystieto" ADD FOREIGN KEY ("henkilotoimijasuhde_id") REFERENCES "public"."HenkiloToimijaSuhde" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."HenkiloToimijaSuhde"
-- ----------------------------
ALTER TABLE "public"."HenkiloToimijaSuhde" ADD FOREIGN KEY ("Suhdeluokka_id") REFERENCES "public"."Suhdeluokka" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."HenkiloToimijaSuhde" ADD FOREIGN KEY ("Ylataso_id") REFERENCES "public"."HenkiloToimijaSuhde" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."HenkiloToimijaSuhde" ADD FOREIGN KEY ("IsaHenkilo_id") REFERENCES "public"."Henkilo" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."HenkiloToimijaSuhde" ADD FOREIGN KEY ("LapsiHenkilo_id") REFERENCES "public"."Henkilo" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."HenkiloToimijaSuhde" ADD FOREIGN KEY ("LapsiYhdistys_id") REFERENCES "public"."Yhdistys" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."HenkiloToimijaSuhde" ADD FOREIGN KEY ("Suhdetyyppi_id") REFERENCES "public"."Suhdetyyppi" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."HenkiloToimijaSuhde" ADD FOREIGN KEY ("Sijainen_id") REFERENCES "public"."Henkilo" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."HenkiloToimijaSuhde" ADD FOREIGN KEY ("SahkoinenYhteystieto_id") REFERENCES "public"."SahkoinenYhteystietoTyyppi" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."KenttienKieliVersiot"
-- ----------------------------
ALTER TABLE "public"."KenttienKieliVersiot" ADD FOREIGN KEY ("kieli_id") REFERENCES "public"."Kieli" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."Kohderyhma"
-- ----------------------------
ALTER TABLE "public"."Kohderyhma" ADD FOREIGN KEY ("ylataso_id") REFERENCES "public"."Kohderyhma" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."Lisatieto"
-- ----------------------------
ALTER TABLE "public"."Lisatieto" ADD FOREIGN KEY ("mediatyyppi_id") REFERENCES "public"."Mediatyyppi" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Lisatieto" ADD FOREIGN KEY ("palvelukanava_id") REFERENCES "public"."Palvelukanava" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Lisatieto" ADD FOREIGN KEY ("palvelutarjous_id") REFERENCES "public"."Palvelutarjous" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Lisatieto" ADD FOREIGN KEY ("toimija_id") REFERENCES "public"."Toimija" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Lisatieto" ADD FOREIGN KEY ("palvelu_id") REFERENCES "public"."Palvelu" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Lisatieto" ADD FOREIGN KEY ("henkilotoimijasuhde_id") REFERENCES "public"."HenkiloToimijaSuhde" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Lisatieto" ADD FOREIGN KEY ("fyysinenpaikka_id") REFERENCES "public"."FyysinenPaikka" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Lisatieto" ADD FOREIGN KEY ("lisatietotyyppi_id") REFERENCES "public"."LisatietoTyyppi" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."OrganisaatioLisatieto"
-- ----------------------------
ALTER TABLE "public"."OrganisaatioLisatieto" ADD FOREIGN KEY ("yritys_id") REFERENCES "public"."Yritys" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."OrganisaatioLisatieto" ADD FOREIGN KEY ("yhdistys_id") REFERENCES "public"."Yhdistys" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."OrganisaatioLisatieto" ADD FOREIGN KEY ("lisatietotyyppi_id") REFERENCES "public"."LisatietoTyyppi" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."OrganisaatioOsoite"
-- ----------------------------
ALTER TABLE "public"."OrganisaatioOsoite" ADD FOREIGN KEY ("yritys_id") REFERENCES "public"."Yritys" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."OrganisaatioOsoite" ADD FOREIGN KEY ("yhdistys_id") REFERENCES "public"."Yhdistys" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."OrganisaatioOsoite" ADD FOREIGN KEY ("osoitetyyppi_id") REFERENCES "public"."OsoiteTyyppi" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."OrganisaatioPuhelinnumero"
-- ----------------------------
ALTER TABLE "public"."OrganisaatioPuhelinnumero" ADD FOREIGN KEY ("numerotyyppi_id") REFERENCES "public"."PuhelinnumeroTyyppi" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."OrganisaatioPuhelinnumero" ADD FOREIGN KEY ("yritys_id") REFERENCES "public"."Yritys" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."OrganisaatioPuhelinnumero" ADD FOREIGN KEY ("yhdistys_id") REFERENCES "public"."Yhdistys" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."OrganisaatioSahkoinenYhteystieto"
-- ----------------------------
ALTER TABLE "public"."OrganisaatioSahkoinenYhteystieto" ADD FOREIGN KEY ("yhditys_id") REFERENCES "public"."Yhdistys" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."OrganisaatioSahkoinenYhteystieto" ADD FOREIGN KEY ("yritys_id") REFERENCES "public"."Yritys" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."OrganisaatioSahkoinenYhteystieto" ADD FOREIGN KEY ("yhteystietotyyppi_id") REFERENCES "public"."SahkoinenYhteystietoTyyppi" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."OrganisaatioToimijaSuhde"
-- ----------------------------
ALTER TABLE "public"."OrganisaatioToimijaSuhde" ADD FOREIGN KEY ("lapsiyritys_id") REFERENCES "public"."Yritys" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."OrganisaatioToimijaSuhde" ADD FOREIGN KEY ("suhdetyyppi_id") REFERENCES "public"."Suhdetyyppi" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."OrganisaatioToimijaSuhde" ADD FOREIGN KEY ("lapsiyhdistys_id") REFERENCES "public"."Yhdistys" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."OrganisaatioToimijaSuhde" ADD FOREIGN KEY ("isayritys_id") REFERENCES "public"."Yritys" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."OrganisaatioToimijaSuhde" ADD FOREIGN KEY ("isayhdistys_id") REFERENCES "public"."Yhdistys" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."OrganisaatioToimijaSuhde" ADD FOREIGN KEY ("lapsihenkilo_id") REFERENCES "public"."Henkilo" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."Osoite"
-- ----------------------------
ALTER TABLE "public"."Osoite" ADD FOREIGN KEY ("kunta_id") REFERENCES "public"."Kunta" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Osoite" ADD FOREIGN KEY ("tilastoitavaalue_id") REFERENCES "public"."TilastoitavaAlue" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Osoite" ADD FOREIGN KEY ("fyysinenpaikka_id") REFERENCES "public"."FyysinenPaikka" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Osoite" ADD FOREIGN KEY ("maa_id") REFERENCES "public"."Maa" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Osoite" ADD FOREIGN KEY ("kaupunginosa_id") REFERENCES "public"."Kaupunginosa" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."Palvelu"
-- ----------------------------
ALTER TABLE "public"."Palvelu" ADD FOREIGN KEY ("ylataso_id") REFERENCES "public"."Palvelu" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Palvelu" ADD FOREIGN KEY ("toteustapa_id") REFERENCES "public"."Toteutustapa" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Palvelu" ADD FOREIGN KEY ("palvelutyyppi_id") REFERENCES "public"."Palvelutyyppi" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."Palvelukanava"
-- ----------------------------
ALTER TABLE "public"."Palvelukanava" ADD FOREIGN KEY ("kieli_id") REFERENCES "public"."Kieli" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Palvelukanava" ADD FOREIGN KEY ("tunnistautumisvaline_id") REFERENCES "public"."Tunnistautumisvaline" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Palvelukanava" ADD FOREIGN KEY ("tunnistautumistaso_id") REFERENCES "public"."Tunnistautumistaso" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Palvelukanava" ADD FOREIGN KEY ("kanavatyyppi_id") REFERENCES "public"."Kanavatyyppi" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Palvelukanava" ADD FOREIGN KEY ("fyysinenpaikka_id") REFERENCES "public"."FyysinenPaikka" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Palvelukanava" ADD FOREIGN KEY ("asiointityyppi_id") REFERENCES "public"."Asiointityyppi" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Palvelukanava" ADD FOREIGN KEY ("sahkoposti_id") REFERENCES "public"."Sahkoposti" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."PalveluKohderyhmaSuhde"
-- ----------------------------
ALTER TABLE "public"."PalveluKohderyhmaSuhde" ADD FOREIGN KEY ("kohderyhma_id") REFERENCES "public"."Kohderyhma" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."PalveluKohderyhmaSuhde" ADD FOREIGN KEY ("palvelutarjous_id") REFERENCES "public"."Palvelutarjous" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."PalveluKohderyhmaSuhde" ADD FOREIGN KEY ("palvelu_id") REFERENCES "public"."Palvelu" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."Palvelupaketti"
-- ----------------------------
ALTER TABLE "public"."Palvelupaketti" ADD FOREIGN KEY ("ylataso_id") REFERENCES "public"."Palvelupaketti" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."Palvelusuunnitelma"
-- ----------------------------
ALTER TABLE "public"."Palvelusuunnitelma" ADD FOREIGN KEY ("suunnitelmatyyppi_id") REFERENCES "public"."Suunnitelmatyyppi" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Palvelusuunnitelma" ADD FOREIGN KEY ("palvelutarjous_id") REFERENCES "public"."Palvelutarjous" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."Palvelutarjous"
-- ----------------------------
ALTER TABLE "public"."Palvelutarjous" ADD FOREIGN KEY ("rinnakkaistapahtuma_id") REFERENCES "public"."Palvelutarjous" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Palvelutarjous" ADD FOREIGN KEY ("tietolahde_id") REFERENCES "public"."Tietolahde" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Palvelutarjous" ADD FOREIGN KEY ("hinta_id") REFERENCES "public"."Hinta" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Palvelutarjous" ADD FOREIGN KEY ("jarjestaja_id") REFERENCES "public"."Toimija" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Palvelutarjous" ADD FOREIGN KEY ("palvelupaketti_id") REFERENCES "public"."Palvelupaketti" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Palvelutarjous" ADD FOREIGN KEY ("toteutustapa_id") REFERENCES "public"."Toteutustapa" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Palvelutarjous" ADD FOREIGN KEY ("palvelukanava_id") REFERENCES "public"."Palvelukanava" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Palvelutarjous" ADD FOREIGN KEY ("ylataso_id") REFERENCES "public"."Palvelutarjous" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Palvelutarjous" ADD FOREIGN KEY ("tuottaja_id") REFERENCES "public"."Toimija" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."PalvelutarjousKieliSuhde"
-- ----------------------------
ALTER TABLE "public"."PalvelutarjousKieliSuhde" ADD FOREIGN KEY ("palvelukanava_id") REFERENCES "public"."Palvelukanava" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."PalvelutarjousKieliSuhde" ADD FOREIGN KEY ("palvelutarjous_id") REFERENCES "public"."Palvelutarjous" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."PalvelutarjousKieliSuhde" ADD FOREIGN KEY ("kieli_id") REFERENCES "public"."Kieli" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."Palvelutyyppi"
-- ----------------------------
ALTER TABLE "public"."Palvelutyyppi" ADD FOREIGN KEY ("ylataso_id") REFERENCES "public"."Palvelutyyppi" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."Puhelinnumero"
-- ----------------------------
ALTER TABLE "public"."Puhelinnumero" ADD FOREIGN KEY ("palvelukanava_id") REFERENCES "public"."Palvelukanava" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Puhelinnumero" ADD FOREIGN KEY ("henkilotoimijasuhde_id") REFERENCES "public"."HenkiloToimijaSuhde" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Puhelinnumero" ADD FOREIGN KEY ("numerotyyppi_id") REFERENCES "public"."PuhelinnumeroTyyppi" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Puhelinnumero" ADD FOREIGN KEY ("fyysinenpaikka_id") REFERENCES "public"."FyysinenPaikka" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."Toimija"
-- ----------------------------
ALTER TABLE "public"."Toimija" ADD FOREIGN KEY ("henkilo_id") REFERENCES "public"."Henkilo" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Toimija" ADD FOREIGN KEY ("yhdistys_id") REFERENCES "public"."Yhdistys" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Toimija" ADD FOREIGN KEY ("tuottajatyyppi_id") REFERENCES "public"."Tuottajatyyppi" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Toimija" ADD FOREIGN KEY ("yritys_id") REFERENCES "public"."Yritys" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."Varaus"
-- ----------------------------
ALTER TABLE "public"."Varaus" ADD FOREIGN KEY ("fyysinenpaikka_id") REFERENCES "public"."FyysinenPaikka" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Varaus" ADD FOREIGN KEY ("toimija_id") REFERENCES "public"."Toimija" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Varaus" ADD FOREIGN KEY ("palvelutarjous_id") REFERENCES "public"."Palvelutarjous" ("Code") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."Yhdistys"
-- ----------------------------
ALTER TABLE "public"."Yhdistys" ADD FOREIGN KEY ("asiointikieli_id") REFERENCES "public"."Kieli" ("Code") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."Yhdistys" ADD FOREIGN KEY ("kotimaa_id") REFERENCES "public"."Maa" ("Code") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."Yhdistys" ADD FOREIGN KEY ("kotikunta_id") REFERENCES "public"."Kunta" ("Code") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."Yritys"
-- ----------------------------
ALTER TABLE "public"."Yritys" ADD FOREIGN KEY ("kotikunta_id") REFERENCES "public"."Kunta" ("Code") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."Yritys" ADD FOREIGN KEY ("kotimaa_id") REFERENCES "public"."Maa" ("Code") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."Yritys" ADD FOREIGN KEY ("organisaatiomuoto_id") REFERENCES "public"."OrganisaatioMuoto" ("Code") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."Yritys" ADD FOREIGN KEY ("asiointikieli_id") REFERENCES "public"."Kieli" ("Code") ON DELETE NO ACTION ON UPDATE NO ACTION;
