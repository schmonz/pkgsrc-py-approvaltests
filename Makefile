# $NetBSD: Makefile,v 1.5 2020/12/04 09:25:25 adam Exp $

DISTNAME=	approvaltests-0.2.10
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel python
MASTER_SITES=	${MASTER_SITE_PYPI:=a/approvaltests/}

MAINTAINER=	schmonz@NetBSD.org
HOMEPAGE=	https://approvaltests.com/
COMMENT=	Assertion/verification library to aid testing
LICENSE=	apache-2.0

DEPENDS+=	${PYPKGPREFIX}-pyperclip>=1.5.27:../../x11/py-pyperclip

USE_LANGUAGES=	# none

PYTHON_VERSIONED_DEPENDENCIES=	test

.include "../../lang/python/egg.mk"
.include "../../lang/python/versioned_dependencies.mk"
.include "../../mk/bsd.pkg.mk"
