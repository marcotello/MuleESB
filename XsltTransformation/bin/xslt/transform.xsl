<?xml version="1.0" encoding="UTF-8"?>
 
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" indent="yes" />
	<xsl:template match="/">
		<ReservationInfo>
			<reservation>
				<xsl:attribute name="id">
					<xsl:value-of select='Reservation/reservation/@id' />
				</xsl:attribute>
				<xsl:attribute name="arrivalDate">
					<xsl:value-of select='Reservation/arrivingDate' />
				</xsl:attribute>
				<xsl:attribute name="departureDate">
					<xsl:value-of select='Reservation/departureDate' />
				</xsl:attribute> 
			</reservation>
			<guest>
				<name>
					<xsl:value-of select="Reservation/guestName" />
				</name>
				<lastName>
					<xsl:value-of select="Reservation/guestLastName" />
				</lastName>
			</guest>
			<room>
				<xsl:attribute name="number">
					<xsl:value-of select='Reservation/room' />
				</xsl:attribute>
				<oceanView>
					<xsl:value-of select="Reservation/oceanView" />
				</oceanView>
				<smokingArea>
					<xsl:value-of select="Reservation/smokingArea" />
				</smokingArea>
			</room>
			</ReservationInfo>
	</xsl:template>
</xsl:stylesheet>