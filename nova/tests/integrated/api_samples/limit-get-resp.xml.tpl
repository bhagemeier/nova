<?xml version='1.0' encoding='UTF-8'?>
<limits xmlns:atom="http://www.w3.org/2005/Atom" xmlns="http://docs.openstack.org/common/api/v1.0">
  <rates>
    <rate regex=".*" uri="*">
      <limit next-available="%(timestamp)s" unit="MINUTE" verb="POST" remaining="10" value="10"/>
      <limit next-available="%(timestamp)s" unit="MINUTE" verb="PUT" remaining="10" value="10"/>
      <limit next-available="%(timestamp)s" unit="MINUTE" verb="DELETE" remaining="100" value="100"/>
    </rate>
    <rate regex="^/servers" uri="*/servers">
      <limit next-available="%(timestamp)s" unit="DAY" verb="POST" remaining="50" value="50"/>
    </rate>
    <rate regex=".*changes-since.*" uri="*changes-since*">
      <limit next-available="%(timestamp)s" unit="MINUTE" verb="GET" remaining="3" value="3"/>
    </rate>
  </rates>
  <absolute>
    <limit name="maxServerMeta" value="128"/>
    <limit name="maxTotalInstances" value="10"/>
    <limit name="maxPersonality" value="5"/>
    <limit name="maxImageMeta" value="128"/>
    <limit name="maxPersonalitySize" value="10240"/>
    <limit name="maxTotalKeypairs" value="100"/>
    <limit name="maxTotalVolumes" value="10"/>
    <limit name="maxTotalCores" value="20"/>
    <limit name="maxTotalFloatingIps" value="10"/>
    <limit name="maxTotalVolumeGigabytes" value="1000"/>
    <limit name="maxTotalRAMSize" value="51200"/>
  </absolute>
</limits>
