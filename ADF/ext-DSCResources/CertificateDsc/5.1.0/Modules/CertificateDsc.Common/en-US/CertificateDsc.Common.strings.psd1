ConvertFrom-StringData @'
    FileNotFoundError                      = File '{0}' not found. (CC0001)
    InvalidHashError                       = '{0}' is not a valid hash. (CC0002)
    CertificatePathError                   = Certificate Path '{0}' is not valid. (CC0003)
    SearchingForCertificateUsingFilters    = Looking for certificate in Store '{0}' using filter '{1}'. (CC0004)
    ConfigurationNamingContext             = Using the following container to look for CA candidates: 'LDAP://CN=CDP,CN=Public Key Services,CN=Services,{0}'. (CC0004)
    DomainNotJoinedError                   = The computer is not joined to a domain. (CC0005)
    StartLocateCAMessage                   = Starting to locate CA. (CC0006)
    StartPingCAMessage                     = Starting to ping CA. (CC0007)
    NoCaFoundError                         = No Certificate Authority could be found. (CC0008)
    CaPingMessage                          = certutil exited with code {0} and the following output: {1}. (CC0009)
    CaFoundMessage                         = Found certificate authority '{0}\{1}'. (CC0010)
    CaOnlineMessage                        = Certificate authority '{0}\{1}' is online. (CC0011)
    CaOfflineMessage                       = Certificate authority '{0}\{1}' is offline. (CC0012)
    TemplateNameResolutionError            = Failed to resolve the template name from Active Directory certificate templates '{0}'. (CC0013)
    TemplateNameNotFound                   = No template name found in Active Directory for '{0}'. (CC0014)
    ActiveDirectoryTemplateSearch          = Failed to get the certificate templates from Active Directory. (CC0015)
    CertificateStoreNotFoundError          = Certificate Store '{0}' not found. (CC0016)
    RemovingCertificateFromStoreMessage    = Removing certificate '{0}' from '{1}' store '{2}'. (CC0017)
    GettingAssemblyListForHashAlgorithms   = Getting assembly list to generate supported hash algorithms. (CC0018)
    FindingSupportedFipsHashAlgorithms     = Finding hash algorithms supported by FIPS. (CC0019)
    FindingSupportedHashAlgorithms         = Finding hash algorithms supported. (CC0020)
    GeneratingSupportedHashAlgorithmsArray = Generating array of supported hash algorithm properties for {0} providers. (CC0021)
    SettingSupportedHashAlgorithmsCache    = Storing list of supported hash algorithms to cache. (CC0022)
    ClearingSupportedHashAlgorithmsCache   = Clearing list of supported hash algorithms from cache. (CC0023)
'@
