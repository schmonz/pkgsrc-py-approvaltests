# $NetBSD: Makefile,v 1.23 2021/09/29 10:09:04 schmonz Exp $

DISTNAME=	approvaltests-2.2.0
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
PYTHON_VERSIONS_INCOMPATIBLE=	27

.include "../../lang/python/egg.mk"
.include "../../lang/python/versioned_dependencies.mk"
.include "../../mk/bsd.pkg.mk"
