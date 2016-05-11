<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:msxsl="urn:schemas-microsoft-com:xslt"
  exclude-result-prefixes="msxsl"
  xmlns:data="http://schemas.datacontract.org/2004/07/Afs.Socle.Routing.Contracts.Data">

    <xsl:output method="html" encoding="utf-8" />
    <xsl:decimal-format name="fr" decimal-separator="," grouping-separator=" " />

    <xsl:param name="imgBaseUrl">http://cdn.axa.fr/mails/axafr/</xsl:param>

    <xsl:template match="/">
        <html>
            <head>
                <style type="text/css">
                    body, #body_style {background:#efebea;min-height:1000px;color:#333333;font-family:Arial, Helvetica, sans-serif;font-size:14px;}
                    p {margin:0; padding:0; margin-bottom:0;} /*optional*/
                    a, a:link, a:visited {color:#114fcc;} /*optional*/
                </style>
            </head>

            <body style="background:#efebea; min-height:1000px; color:#333333;font-family:Arial, Helvetica, sans-serif; font-size:14px" alink="#FF0000" link="#FF0000" bgcolor="#ffffff" text="#FFFFFF">

                <xsl:choose>
                    <xsl:when test= "//data:DonneeFormulaire[data:CodeQuestion='ID_APPLICATION']/data:ValeurReponse='AXAFR'
					 or //data:DonneeFormulaire[data:CodeQuestion='ID_APPLICATION']/data:ValeurReponse='API'">
                        <div id="body_style" style="padding:15px; display:block; font-family:Arial, Helvetica, sans-serif">
                           
                            <table bgcolor="#ffffff" width="600" style="border-collapse:collapse; margin:0 auto; font-family:Arial, Helvetica, sans-serif">
                                <tr>
                                    <td style="padding:0">
                                        <table style="font-size:14px;border-bottom: 4px solid #98bc58;width: 100%;border-collapse:collapse">
                                            <tr>
                                                <td style="padding:22px;">
                                                    <a href="http://www.axa.fr">
                          <img style="display: block;" alt="Logo AXA" src="https://www.axa.fr/etc/designs/axa/axa-fr-desktop/clientlib_publish/img/logo/logo-axa.png" align="left" width="120"  border="0">
                            
                          </img>
						  </a>
                                                </td>
                                            </tr>
                                        </table>
                                        <table style="font-size:14px; line-height: 22px; width:100%; border-bottom:4px solid #efebea">
                                            <tr>
                                                <td style="padding:22px;">
                                                    <p style="padding-bottom:10px">
                                                        <strong>
                                                            Cher(e)<xsl:text>&#xA0;</xsl:text><xsl:value-of select="//data:DonneeFormulaire[data:CodeQuestion='civil']/data:ValeurReponse"/>
                                                            <xsl:text>&#xA0;</xsl:text>
                                                            <xsl:value-of select="//data:DonneeFormulaire[data:CodeQuestion='nom_interlocuteur']/data:ValeurReponse"/>
                                                            <xsl:text>&#xA0;</xsl:text>
                                                            <xsl:value-of select="//data:DonneeFormulaire[data:CodeQuestion='prenom_interlocuteur']/data:ValeurReponse"/>
                                                        </strong>
                                                    </p>
                                                    <p style="font-size:14px; line-height: 22px;">Votre demande de contact a bien été prise en compte.</p>
                                                    <br/>
                                                    <table width="100%" style="border-collapse:collapse; table-layout: fixed">
                                                        <tr>
                                                            <td colspan="2" bgcolor="#98bc58" style="padding:7px 14px; color:#ffffff; font-size:20px; font-weight:bold; border-bottom: 2px solid #ffffff;">Rappel de vos coordonnées de contact</td>
                                                        </tr>
                                                        <tr>
                                                            <td bgcolor="#efebea" style="padding:11px 14px; font-size:14px;border-right: 2px solid #ffffff;">
                                                                <strong>Email :</strong>
                                                                <xsl:text>&#xA0;</xsl:text>
                                                                <xsl:value-of select="//data:DonneeFormulaire[data:CodeQuestion='email']/data:ValeurReponse"/>
                                                            </td>
                                                            <td bgcolor="#efebea" style="padding:11px 14px; font-size:14px;">
                                                                <strong>Téléphone :</strong>
                                                                <xsl:text>&#xA0;</xsl:text>
                                                                <xsl:value-of select="//data:DonneeFormulaire[data:CodeQuestion='telephone']/data:ValeurReponse"/>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <br/>
                                                    <p style="padding-bottom:10px">Elle sera traitée dans les meilleurs délais, nous vous remercions de votre confiance.</p>
                                                    <p>
                                                        <strong>L'équipe AXA.fr</strong>
                                                    </p>
                                                </td>
                                            </tr>
                                        </table>

                                        <table style="font-size:14px; line-height: 22px; width:100%;">
                                            <tr>
                                                <td style="padding:22px;">
                                                    <table width="100%" style="border-collapse:collapse; table-layout:fixed">
                                                        <tr>
                                                            <td style="padding:0 0 22px 0" valign="top">
                                                                <table  width="270" style="border-collapse: collapse">
                                                                    <tr>
                                                                        <td bgcolor="#888888" style="padding: 6px 14px; color:#ffffff; font-weight:bold; font-size:20px; border-bottom: 2px solid #ffffff">Nos engagements</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td valign="top" style="padding:14px; border-bottom: 2px solid #ffffff; height:190px" bgcolor="#efebea">
                                                                            <table style="border-collapse:collapse">
                                                                                <tr>
                                                                                    <td style="padding:0; text-align:center">
                                                                                        <img alt="AXA Votre Service">
                                                                                            <xsl:attribute name="src">
                                                                                                <xsl:value-of select="concat($imgBaseUrl, 'axa-votre-service-logo.png')"/>
                                                                                            </xsl:attribute>
                                                                                        </img>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td style="text-align:left; padding: 10px 0;">
                                                                                        <table style="table-layout: fixed;border-collapse: collapse">
                                                                                            <tr>
                                                                                                <td valign="top" style="padding-right:5px; width: 8px">
                                                                                                    <img style="display:block" alt="">
                                                                                                        <xsl:attribute name="src">
                                                                                                            <xsl:value-of select="concat($imgBaseUrl, 'bullet.png')"/>
                                                                                                        </xsl:attribute>
                                                                                                    </img>
                                                                                                </td>
                                                                                                <td style="font-size:14px;padding:0">Simplicité.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td valign="top" style="padding-right:5px; width: 8px">
                                                                                                    <img style="display:block" alt="">
                                                                                                        <xsl:attribute name="src">
                                                                                                            <xsl:value-of select="concat($imgBaseUrl, 'bullet.png')"/>
                                                                                                        </xsl:attribute>
                                                                                                    </img>
                                                                                                </td>
                                                                                                <td style="font-size:14px;padding:0">Conseil.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td valign="top" style="padding-right:5px; width: 8px">
                                                                                                    <img style="display:block" alt="">
                                                                                                        <xsl:attribute name="src">
                                                                                                            <xsl:value-of select="concat($imgBaseUrl, 'bullet.png')"/>
                                                                                                        </xsl:attribute>
                                                                                                    </img>
                                                                                                </td>
                                                                                                <td style="font-size:14px;padding:0">Présence.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td valign="top" style="padding-right:5px; width: 8px">
                                                                                                    <img style="display:block" alt="">
                                                                                                        <xsl:attribute name="src">
                                                                                                            <xsl:value-of select="concat($imgBaseUrl, 'bullet.png')"/>
                                                                                                        </xsl:attribute>
                                                                                                    </img>
                                                                                                </td>
                                                                                                <td style="font-size:14px;padding:0">Ecoute.</td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td style="padding:6px 0 0 0; text-align:left; font-size: 14px;line-height: 17px;">
                                                                                        <p style="">Nos engagements pour vous offrir le meilleur du service.</p>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="padding:0">
                                                                            <table style="border-collapse:collapse; width:100%" bgcolor="#efebea">
                                                                                <tr>
                                                                                    <td style="padding:8px 16px; font-weight:bold;">
                                                                                        <a href="http://www.axa.fr/axavotreservice" style="text-decoration:none; color:#333333; display:block; font-size:14px">Découvrir notre charte</a>
                                                                                    </td>
                                                                                    <td style="text-align:right; padding-right:4px; width: 28px;">
                                                                                        <a href="http://www.axa.fr/axavotreservice" style="border:0; display:block">
                                                                                            <img style="vertical-align: middle; border:0" alt="">
                                                                                                <xsl:attribute name="src">
                                                                                                    <xsl:value-of select="concat($imgBaseUrl, 'picto-arrow.png')"/>
                                                                                                </xsl:attribute>
                                                                                            </img>
                                                                                        </a>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                            <td style="padding:0 0 22px 0;" valign="top">
                                                                <table  width="270" style="border-collapse: collapse" align="right">
                                                                    <tr>
                                                                        <td bgcolor="#004893" style="padding: 6px 14px; color:#ffffff; font-weight:bold; font-size:20px; border-bottom: 2px solid #ffffff; text-align:left">Les plus AXA</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td valign="top" style="padding:14px; border-bottom: 2px solid #ffffff; height:190px" bgcolor="#efebea">
                                                                            <table style="border-collapse:collapse">
                                                                                <tr>
                                                                                    <td style="padding:0; text-align:left;">
                                                                                        <table style="border-collapse: collapse">
                                                                                            <tr>
                                                                                                <td valign="top" style="padding-right:5px; width: 8px">
                                                                                                    <img style="display:block" alt="">
                                                                                                        <xsl:attribute name="src">
                                                                                                            <xsl:value-of select="concat($imgBaseUrl, 'bullet.png')"/>
                                                                                                        </xsl:attribute>
                                                                                                    </img>
                                                                                                </td>
                                                                                                <td style="font-size:14px;padding:0">Tiers-payant : aucuns frais à avancer sur vos principales dépenses de santé.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td valign="top" style="padding-right:5px; width: 8px">
                                                                                                    <img style="display:block" alt="">
                                                                                                        <xsl:attribute name="src">
                                                                                                            <xsl:value-of select="concat($imgBaseUrl, 'bullet.png')"/>
                                                                                                        </xsl:attribute>
                                                                                                    </img>
                                                                                                </td>
                                                                                                <td style="font-size:14px;padding:0">
                                                                                                    Prise en charge hospitaliére <br/>en 15 mn.
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td valign="top" style="padding-right:5px; width: 8px">
                                                                                                    <img style="display:block" alt="">
                                                                                                        <xsl:attribute name="src">
                                                                                                            <xsl:value-of select="concat($imgBaseUrl, 'bullet.png')"/>
                                                                                                        </xsl:attribute>
                                                                                                    </img>
                                                                                                </td>
                                                                                                <td style="font-size:14px;padding:0">Pack Assistance Hôpital.</td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="padding:0">
                                                                            <table style="border-collapse:collapse; width:100%" bgcolor="#efebea">
                                                                                <tr>
                                                                                    <td style="padding:8px 16px; font-weight:bold;">
                                                                                        <a href="https://www.axa.fr/mutuelle-sante/services.html" style="text-decoration:none; color:#333333; display:block; text-align:left; font-size:14px">Consulter les services AXA</a>
                                                                                    </td>
                                                                                    <td style="text-align:right; padding-right:4px; width: 28px;">
                                                                                        <a href="https://www.axa.fr/mutuelle-sante/services.html" style="border:0; display:block">
                                                                                            <img style="vertical-align: middle; border:0" alt="">
                                                                                                <xsl:attribute name="src">
                                                                                                    <xsl:value-of select="concat($imgBaseUrl, 'picto-arrow.png')"/>
                                                                                                </xsl:attribute>
                                                                                            </img>
                                                                                        </a>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                        <table bgcolor="#004893" style="height:50px;table-layout:auto; width:100%; color:#ffffff">
                                            <tr>
                                                <td style="color:#ffffff;padding:5px 0 0 22px">
                                                    <a href="https://www.facebook.com/axavotreservice" style="border:0">
                                                        <img style="border:0" alt="Facebook" >
                                                            <xsl:attribute name="src">
                                                                <xsl:value-of select="concat($imgBaseUrl, 'btn-fb.gif')"/>
                                                            </xsl:attribute>
                                                        </img>
                                                    </a>
                                                    <a href="https://twitter.com/AXAFrance" style="border:0">
                                                        <img style="border:0" alt="Twitter" >
                                                            <xsl:attribute name="src">
                                                                <xsl:value-of select="concat($imgBaseUrl, 'btn-tw.gif')"/>
                                                            </xsl:attribute>
                                                        </img>
                                                    </a>
                                                    <a href="http://www.linkedin.com/company/axa-france" style="border:0">
                                                        <img style="border:0" alt="LinkedIn" >
                                                            <xsl:attribute name="src">
                                                                <xsl:value-of select="concat($imgBaseUrl, 'btn-li.gif')"/>
                                                            </xsl:attribute>
                                                        </img>
                                                    </a>
                                                    <a href="http://www.youtube.com/user/AXAFranceChaine" style="border:0">
                                                        <img style="border:0" alt="Youtube">
                                                            <xsl:attribute name="src">
                                                                <xsl:value-of select="concat($imgBaseUrl, 'btn-yt.gif')"/>
                                                            </xsl:attribute>
                                                        </img>
                                                    </a>
                                                </td>
                                               <td style="color:#ffffff; text-align:right; padding:0 22px 0 0; font-size:13px">
													<a href="https://m.axa.fr/" style="color:#ffffff; font-size:13px; text-decoration:none">AXA sur mobile</a>  |
													<a href="https://www.axa.fr" style="color:#ffffff; font-size:13px; text-decoration:none">AXA sur le Web</a>  |
													<a href="http://axafrance.fr" style="color:#ffffff; font-size:13px; text-decoration:none">Axafrance.fr</a>
												</td>
                                            </tr>
                                        </table>
                                        <table style="border-collapse:collapse">
                                            <tr>
                                                <td style="padding:22px">
                                                    <p style="font-size:9px; color:#787878">
                                                        AXA Assurances Vie Mutuelle, société d'assurance mutuelle sur la vie et de capitalisation à cotisations fixes - Siren 353 457 245.<br/>
                                                        AXA Assurances IARD Mutuelle, société d'assurance mutuelle à cotisations fixes contre l'incendie, les accidents et risques divers - Siren 775 699 309 - Siège social : 26, rue Drouot - 75009 Paris - Entreprises régies par le code des assurances.<br/>
                                                        AXA France IARD, société anonyme au capital de 214 799 030 euros - RCS Paris.<br/>
                                                        AXA France Vie, société anonyme au capital de 487 725 073,50 euros - RCS Paris.
                                                    </p>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td bgcolor="#efebea" style="padding:10px 0;">
                                        <p style="font-size:11px; color:#666666">Cet email a été envoyé par un automate, nous vous remercions de ne pas répondre à cette adresse.</p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </xsl:when>
                    <xsl:otherwise>

                        <div class="Section1">
                            <p>
                                Bonjour,<br /><br />
                                <xsl:text disable-output-escaping="yes"> Votre demande a bien été prise en compte.</xsl:text>
                            </p>
                            <p>
                                <xsl:text disable-output-escaping="yes"> Elle sera traitée dans les meilleurs délais par votre conseiller AXA : </xsl:text>
                                <br />
                                <xsl:value-of select="//data:DonneeFormulaire[data:CodeQuestion='CONSEILLER_NOM']/data:ValeurReponse" disable-output-escaping="yes"/>
                                <br />
                                <xsl:choose>
                                    <xsl:when test="//data:DonneeFormulaire[data:CodeQuestion='CONSEILLER_ADR1']/data:ValeurReponse!=''">
                                        <xsl:value-of select="//data:DonneeFormulaire[data:CodeQuestion='CONSEILLER_ADR1']/data:ValeurReponse" disable-output-escaping="yes"/>
                                        <br />
                                    </xsl:when>
                                </xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="//data:DonneeFormulaire[data:CodeQuestion='CONSEILLER_ADR2']/data:ValeurReponse!=''">
                                        <xsl:value-of select="//data:DonneeFormulaire[data:CodeQuestion='CONSEILLER_ADR2']/data:ValeurReponse" disable-output-escaping="yes"/>
                                        <br />
                                    </xsl:when>
                                </xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="//data:DonneeFormulaire[data:CodeQuestion='CONSEILLER_ADR3']/data:ValeurReponse!=''">
                                        <xsl:value-of select="//data:DonneeFormulaire[data:CodeQuestion='CONSEILLER_ADR3']/data:ValeurReponse" disable-output-escaping="yes"/>
                                        <br />
                                    </xsl:when>
                                </xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="//data:DonneeFormulaire[data:CodeQuestion='CONSEILLER_CP']/data:ValeurReponse!=''">
                                        <xsl:value-of select="//data:DonneeFormulaire[data:CodeQuestion='CONSEILLER_CP']/data:ValeurReponse"/>
                                        <br />
                                    </xsl:when>
                                </xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="//data:DonneeFormulaire[data:CodeQuestion='CONSEILLER_VILLE']/data:ValeurReponse!=''">
                                        <xsl:value-of select="//data:DonneeFormulaire[data:CodeQuestion='CONSEILLER_VILLE']/data:ValeurReponse"/>
                                        <br />
                                    </xsl:when>
                                </xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="//data:DonneeFormulaire[data:CodeQuestion='CONSEILLER_TEL']/data:ValeurReponse!=''">
                                        <xsl:text disable-output-escaping="yes">Téléphone : </xsl:text>
                                        <xsl:value-of select="//data:DonneeFormulaire[data:CodeQuestion='CONSEILLER_TEL']/data:ValeurReponse"/>
                                        <br />
                                    </xsl:when>
                                </xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="//data:DonneeFormulaire[data:CodeQuestion='CONSEILLER_TEL2']/data:ValeurReponse!=''">
                                        <xsl:text disable-output-escaping="yes">Téléphone : </xsl:text>
                                        <xsl:value-of select="//data:DonneeFormulaire[data:CodeQuestion='CONSEILLER_TEL2']/data:ValeurReponse"/>
                                        <br />
                                    </xsl:when>
                                </xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="//data:DonneeFormulaire[data:CodeQuestion='CONSEILLER_FAX']/data:ValeurReponse!=''">
                                        <xsl:text disable-output-escaping="yes">Fax : </xsl:text>
                                        <xsl:value-of select="//data:DonneeFormulaire[data:CodeQuestion='CONSEILLER_FAX']/data:ValeurReponse"/>
                                        <br />
                                    </xsl:when>
                                </xsl:choose>
                            </p>
                            <p>
                                <xsl:text disable-output-escaping="yes">Pour toute information complémentaire, n'hésitez pas à prendre contact avec lui.</xsl:text>
                                <br />
                            </p>
                            <p>
                                <xsl:text disable-output-escaping="yes">Service eBusiness</xsl:text>
                                <br />
                            </p>
                            <p>
                                <xsl:text disable-output-escaping="yes">Cet email a été envoyé par un automate, nous vous remercions de ne pas répondre à cette adresse.</xsl:text>
                                <br />
                            </p>
                        </div>
                        
                    </xsl:otherwise>
                </xsl:choose>

            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
