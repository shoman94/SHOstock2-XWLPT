.class public Lcom/android/server/enterprise/VpnInfoPolicy;
.super Landroid/app/enterprise/IVpnInfoPolicy$Stub;
.source "VpnInfoPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEDMStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field private mInfo:Lcom/android/internal/net/LegacyVpnInfo;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mService:Landroid/net/IConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "ctx"

    .prologue
    const/4 v8, 0x0

    .line 107
    invoke-direct {p0}, Landroid/app/enterprise/IVpnInfoPolicy$Stub;-><init>()V

    .line 69
    const-string v6, "VpnPolicy"

    iput-object v6, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->TAG:Ljava/lang/String;

    .line 71
    iput-object v8, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mService:Landroid/net/IConnectivityManager;

    .line 75
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    .line 77
    iput-object v8, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 79
    iput-object v8, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 109
    iput-object p1, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mContext:Landroid/content/Context;

    .line 110
    new-instance v6, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v7, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 111
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v5

    .line 112
    .local v5, vpnProfileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    const-string v6, "setup_wizard_has_run"

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 114
    iget-object v6, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "VPN"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 116
    .local v1, cvList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 117
    .local v0, cv:Landroid/content/ContentValues;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 118
    .local v4, p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    const-string v6, "VpnID"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "UsrName"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "UsrPwd"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 122
    :cond_2
    iget-object v6, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 123
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->saveLogin:Z

    .line 124
    const-string v6, "UsrName"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    .line 126
    :cond_3
    iget-object v6, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 127
    const-string v6, "UsrPwd"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    goto :goto_0

    .line 133
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #cvList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    :cond_4
    return-void
.end method

.method private addProfile(Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)V
    .locals 2
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1012
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/VpnInfoPolicy;->saveProfileToStorage(Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1013
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.enterprise.VPN_NEW_PROFILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1014
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1016
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private checkDuplicateName(Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;I)Z
    .locals 6
    .parameter "p"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 989
    if-lez p2, :cond_1

    .line 990
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 991
    .local v2, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 992
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 993
    iget-object v5, p1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    iget-object v3, v3, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 994
    const/4 v3, 0x1

    .line 1004
    .end local v1           #i:I
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :goto_1
    return v3

    .line 992
    .restart local v1       #i:I
    .restart local v2       #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1           #i:I
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :cond_1
    move v3, v4

    .line 999
    goto :goto_1

    .line 1001
    :catch_0
    move-exception v0

    .line 1002
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    move v3, v4

    .line 1004
    goto :goto_1
.end method

.method private declared-synchronized disconnect()V
    .locals 6

    .prologue
    .line 1143
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mService:Landroid/net/IConnectivityManager;

    if-nez v3, :cond_0

    .line 1144
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->startVpnService()V

    .line 1146
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mService:Landroid/net/IConnectivityManager;

    if-eqz v3, :cond_1

    .line 1147
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1148
    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mService:Landroid/net/IConnectivityManager;

    const-string v4, "[Legacy VPN]"

    const-string v5, "[Legacy VPN]"

    invoke-interface {v3, v4, v5}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1149
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1154
    .end local v1           #token:J
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1151
    :catch_0
    move-exception v0

    .line 1152
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1143
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private enforceSystemUser()V
    .locals 2

    .prologue
    .line 102
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 103
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    return-void
.end method

.method private enforceVpnPermission()I
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_VPN"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getProfileIndexFromName(Ljava/lang/String;)I
    .locals 4
    .parameter "Name"

    .prologue
    .line 968
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 969
    .local v2, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 970
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 971
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    iget-object v3, v3, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 979
    .end local v1           #i:I
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :goto_1
    return v1

    .line 970
    .restart local v1       #i:I
    .restart local v2       #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 976
    .end local v1           #i:I
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 977
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 979
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private isCredentialsLocked()Z
    .locals 2

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeProfileFromStorage(Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)V
    .locals 7
    .parameter "p"

    .prologue
    .line 1075
    const/4 v4, 0x1

    :try_start_0
    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "VpnID"

    aput-object v5, v0, v4

    .line 1078
    .local v0, Column:[Ljava/lang/String;
    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    aput-object v5, v1, v4

    .line 1081
    .local v1, Value:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "VPN"

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VPN_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1083
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.server.enterprise.VPN_NEW_PROFILE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1084
    .local v3, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    .end local v0           #Column:[Ljava/lang/String;
    .end local v1           #Value:[Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 1086
    :catch_0
    move-exception v2

    .line 1087
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private replaceProfile(ILcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)V
    .locals 5
    .parameter "index"
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1094
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    .line 1095
    .local v1, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1096
    iget-object v3, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VPN_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    iget-object v2, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 1097
    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 1098
    .local v0, oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    if-eqz v0, :cond_0

    .line 1099
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/VpnInfoPolicy;->saveProfileToStorage(Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)Z

    .line 1102
    .end local v0           #oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    :cond_0
    return-void
.end method

.method private retrieveVpnListFromStorage()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 868
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 869
    const/4 v0, 0x0

    .line 884
    :cond_0
    return-object v0

    .line 871
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 874
    .local v0, ProfileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    iget-object v7, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string v8, "VPN_"

    invoke-virtual {v7, v8}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 875
    .local v4, keys:[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v7, v4

    if-lez v7, :cond_0

    .line 876
    move-object v1, v4

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v3, v1, v2

    .line 877
    .local v3, key:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 878
    iget-object v7, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VPN_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    move-result-object v6

    .line 879
    .local v6, profile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    if-eqz v6, :cond_2

    .line 880
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    .end local v6           #profile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private saveProfileToStorage(Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)Z
    .locals 12
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1044
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VPN_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->encode()[B

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1045
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.android.server.enterprise.VPN_NEW_PROFILE"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1046
    .local v3, intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1047
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v5

    .line 1049
    .local v5, uid:I
    iget-object v9, p1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/VpnInfoPolicy;->getUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1050
    .local v6, username:Ljava/lang/String;
    iget-object v9, p1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/VpnInfoPolicy;->getUserPwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1051
    .local v4, pwd:Ljava/lang/String;
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "VpnID"

    aput-object v10, v0, v9

    .line 1054
    .local v0, columns:[Ljava/lang/String;
    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    iget-object v10, p1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    aput-object v10, v7, v9

    .line 1057
    .local v7, values:[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1058
    .local v1, cv:Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1059
    const-string v9, "VpnID"

    iget-object v10, p1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    const-string v9, "UsrName"

    invoke-virtual {v1, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    const-string v9, "UsrPwd"

    invoke-virtual {v1, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    iget-object v9, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v10, "VPN"

    invoke-virtual {v9, v10, v0, v7, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1067
    .end local v0           #columns:[Ljava/lang/String;
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #pwd:Ljava/lang/String;
    .end local v5           #uid:I
    .end local v6           #username:Ljava/lang/String;
    .end local v7           #values:[Ljava/lang/String;
    :cond_0
    :goto_0
    return v8

    .line 1064
    :catch_0
    move-exception v2

    .line 1065
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setProfileId()J
    .locals 7

    .prologue
    .line 1023
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1024
    .local v3, millis:J
    iget-object v5, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string v6, "VPN_"

    invoke-virtual {v5, v6}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1025
    .local v2, keys:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_1

    .line 1026
    aget-object v5, v2, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 1027
    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    .line 1028
    const/4 v1, 0x0

    .line 1025
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1032
    .end local v1           #i:I
    .end local v2           #keys:[Ljava/lang/String;
    .end local v3           #millis:J
    :catch_0
    move-exception v0

    .line 1033
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1035
    const-wide/16 v3, -0x1

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    return-wide v3
.end method

.method private declared-synchronized startVpnService()V
    .locals 2

    .prologue
    .line 1133
    monitor-enter p0

    :try_start_0
    const-string v1, "connectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mService:Landroid/net/IConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1138
    :goto_0
    monitor-exit p0

    return-void

    .line 1135
    :catch_0
    move-exception v0

    .line 1136
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1133
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized createProfile(Landroid/app/enterprise/VpnAdminProfile;)Z
    .locals 9
    .parameter "adminProfile"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 892
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 896
    :try_start_1
    iget-object v7, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mService:Landroid/net/IConnectivityManager;

    if-nez v7, :cond_0

    .line 897
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->startVpnService()V

    .line 899
    :cond_0
    iget-object v7, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mService:Landroid/net/IConnectivityManager;

    if-eqz v7, :cond_1

    .line 900
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 901
    .local v2, token:J
    iget-object v7, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v7}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 902
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 903
    iget-object v7, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v7, v7, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    .line 904
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->disconnect()V

    .line 908
    .end local v2           #token:J
    :cond_1
    iget-object v7, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p1, Landroid/app/enterprise/VpnAdminProfile;->serverName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xe

    if-ge v7, v8, :cond_2

    iget-object v7, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x40

    if-gt v7, v8, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/VpnInfoPolicy;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    if-nez v7, :cond_4

    .line 959
    :cond_3
    :goto_0
    monitor-exit p0

    return v5

    .line 916
    :cond_4
    :try_start_2
    new-instance v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->setProfileId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;-><init>(Ljava/lang/String;)V

    .line 917
    .local v4, vpnProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    if-eqz v4, :cond_3

    .line 918
    iget-object v7, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iput-object v7, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    .line 919
    iget-object v7, p1, Landroid/app/enterprise/VpnAdminProfile;->serverName:Ljava/lang/String;

    iput-object v7, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->server:Ljava/lang/String;

    .line 920
    iget-object v7, p1, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    :goto_1
    iput-boolean v6, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->saveLogin:Z

    .line 922
    iget-object v6, p1, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 923
    iget-object v6, p1, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    iput-object v6, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    .line 925
    :cond_5
    iget-object v6, p1, Landroid/app/enterprise/VpnAdminProfile;->userPassword:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 926
    iget-object v6, p1, Landroid/app/enterprise/VpnAdminProfile;->userPassword:Ljava/lang/String;

    iput-object v6, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    .line 928
    :cond_6
    iget-object v6, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v7, "PPTP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 929
    const/4 v6, 0x0

    iput v6, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->type:I

    .line 930
    iget-boolean v6, p1, Landroid/app/enterprise/VpnAdminProfile;->PPTPEncryptionEnable:Z

    iput-boolean v6, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->mppe:Z

    .line 947
    :cond_7
    :goto_2
    iget-object v6, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 948
    .local v1, index:I
    if-gez v1, :cond_3

    invoke-direct {p0, v4, v1}, Lcom/android/server/enterprise/VpnInfoPolicy;->checkDuplicateName(Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 949
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/VpnInfoPolicy;->saveProfileToStorage(Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)Z

    move-result v5

    goto :goto_0

    .end local v1           #index:I
    :cond_8
    move v6, v5

    .line 920
    goto :goto_1

    .line 931
    :cond_9
    iget-object v6, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v7, "L2TP_IPSEC_PSK"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 932
    iget-object v6, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 935
    const/4 v6, 0x1

    iput v6, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->type:I

    .line 936
    iget-object v6, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    iput-object v6, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->ipsecSecret:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 952
    .end local v4           #vpnProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    :catch_0
    move-exception v0

    .line 953
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 892
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 938
    .restart local v4       #vpnProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    :cond_a
    :try_start_4
    iget-object v6, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v7, "L2TP_IPSEC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 939
    iget-object v6, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 942
    iget-object v6, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    iput-object v6, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 943
    iget-object v6, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    iput-object v6, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 944
    const/4 v6, 0x2

    iput v6, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->type:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 955
    .end local v4           #vpnProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    :catch_1
    move-exception v0

    .line 956
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized deleteProfile(Ljava/lang/String;)Z
    .locals 8
    .parameter "name"

    .prologue
    .line 625
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 629
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 630
    .local v3, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 631
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 632
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    iget-object v6, v6, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 633
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 634
    .local v2, p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    iget-object v6, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mService:Landroid/net/IConnectivityManager;

    if-nez v6, :cond_0

    .line 635
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->startVpnService()V

    .line 637
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mService:Landroid/net/IConnectivityManager;

    if-eqz v6, :cond_2

    .line 638
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 639
    .local v4, token:J
    iget-object v6, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v6}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 640
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 641
    iget-object v6, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v6, v6, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 642
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->disconnect()V

    .line 644
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/VpnInfoPolicy;->removeProfileFromStorage(Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 645
    const/4 v6, 0x1

    .line 654
    .end local v1           #i:I
    .end local v2           #p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v3           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    .end local v4           #token:J
    :goto_1
    monitor-exit p0

    return v6

    .line 631
    .restart local v1       #i:I
    .restart local v3       #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 651
    .end local v1           #i:I
    .end local v3           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 652
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 654
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 625
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized getCaCertificate(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "profileName"

    .prologue
    const/4 v4, 0x0

    .line 581
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 582
    const/4 v0, 0x0

    .line 583
    .local v0, certificate:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 594
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v4

    .line 586
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 587
    .local v3, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 588
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 589
    .local v2, p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    iget-object v5, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 590
    iget-object v4, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->ipsecCaCert:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 581
    .end local v0           #certificate:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v3           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "providerName"

    .prologue
    const/4 v3, 0x0

    .line 382
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 383
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 394
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 386
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 387
    .local v2, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 388
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 389
    .local v1, p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    iget-object v4, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 390
    iget-object v3, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 382
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getL2TPSecret(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "profileName"

    .prologue
    const/4 v3, 0x0

    .line 717
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 718
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v3

    .line 730
    :goto_0
    return-object v2

    .line 721
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    .line 722
    .local v1, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 723
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 724
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    iget-object v2, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 726
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    iget-object v2, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->l2tpSecret:Ljava/lang/String;

    goto :goto_0

    .line 723
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    :cond_2
    move-object v2, v3

    .line 730
    goto :goto_0
.end method

.method public declared-synchronized getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "providerId"

    .prologue
    const/4 v3, 0x0

    .line 344
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    if-nez p1, :cond_1

    .line 356
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 348
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 349
    .local v2, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 350
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 351
    .local v1, p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    iget-object v4, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 352
    iget-object v3, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 344
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getPresharedKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "providerName"

    .prologue
    .line 537
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 538
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 539
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 540
    .local v2, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 541
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 542
    .local v1, p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    iget-object v3, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 543
    iget-object v3, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->ipsecSecret:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :goto_0
    monitor-exit p0

    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 537
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getServerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "providerName"

    .prologue
    const/4 v3, 0x0

    .line 363
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 364
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 375
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 367
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 368
    .local v2, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 369
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 370
    .local v1, p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    iget-object v4, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 371
    iget-object v3, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->server:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 363
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getState(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "providerName"

    .prologue
    const/4 v4, 0x0

    .line 401
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    if-nez p1, :cond_0

    .line 441
    :goto_0
    monitor-exit p0

    return-object v4

    .line 406
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mService:Landroid/net/IConnectivityManager;

    if-nez v5, :cond_1

    .line 407
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->startVpnService()V

    .line 409
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mService:Landroid/net/IConnectivityManager;

    if-eqz v5, :cond_4

    .line 410
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 411
    .local v2, token:J
    iget-object v5, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v5}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 412
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 413
    const/4 v1, 0x0

    .line 414
    .local v1, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v5, :cond_2

    .line 415
    iget-object v5, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v5, v5, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/VpnInfoPolicy;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 417
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 418
    iget-object v5, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v5, v5, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    packed-switch v5, :pswitch_data_0

    .line 432
    const-string v4, "IDLE"

    goto :goto_0

    .line 420
    :pswitch_0
    const-string v4, "DISCONNECTED"

    goto :goto_0

    .line 422
    :pswitch_1
    const-string v4, "INITIALIZING"

    goto :goto_0

    .line 424
    :pswitch_2
    const-string v4, "CONNECTING"

    goto :goto_0

    .line 426
    :pswitch_3
    const-string v4, "CONNECTED"

    goto :goto_0

    .line 428
    :pswitch_4
    const-string v4, "TIMEOUT"

    goto :goto_0

    .line 430
    :pswitch_5
    const-string v4, "FAILED"

    goto :goto_0

    .line 435
    :cond_3
    const-string v4, "IDLE"

    goto :goto_0

    .line 438
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #token:J
    :cond_4
    const-string v4, "IDLE"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 401
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 418
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public declared-synchronized getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "profileName"

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 316
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 317
    .local v2, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 318
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 319
    .local v1, p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    iget-object v3, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 320
    iget v3, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->type:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 322
    :pswitch_0
    const-string v3, "PPTP"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    :goto_1
    monitor-exit p0

    return-object v3

    .line 324
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    :pswitch_1
    :try_start_1
    const-string v3, "L2TP_IPSEC_PSK"

    goto :goto_1

    .line 326
    :pswitch_2
    const-string v3, "L2TP_IPSEC"

    goto :goto_1

    .line 328
    :pswitch_3
    const-string v3, "IPSEC_XAUTH_PSK"

    goto :goto_1

    .line 330
    :pswitch_4
    const-string v3, "IPSEC_XAUTH_RSA"

    goto :goto_1

    .line 332
    :pswitch_5
    const-string v3, "IPSEC_HYBRID_RSA"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 337
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 315
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 320
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public declared-synchronized getUserCertificate(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "profileName"

    .prologue
    const/4 v3, 0x0

    .line 661
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 662
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 673
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 665
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 666
    .local v2, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 667
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 668
    .local v1, p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    iget-object v4, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 669
    iget-object v3, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->ipsecUserCert:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 661
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getUserName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "providerName"

    .prologue
    .line 449
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v3

    .line 450
    .local v3, uid:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 451
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 452
    .local v2, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 453
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 454
    .local v1, p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    iget-object v4, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 455
    iget-object v4, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :goto_0
    monitor-exit p0

    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 449
    .end local v3           #uid:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getUserNameById(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    .line 468
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 469
    iget-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "VPN"

    const-string v2, "VpnID"

    const-string v3, "UsrName"

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserPwd(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "providerName"

    .prologue
    .line 487
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v3

    .line 488
    .local v3, uid:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 489
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 490
    .local v2, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 491
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 492
    .local v1, p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    iget-object v4, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 493
    iget-object v4, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :goto_0
    monitor-exit p0

    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 487
    .end local v3           #uid:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getUserPwdById(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    .line 478
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 479
    iget-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "VPN"

    const-string v2, "VpnID"

    const-string v3, "UsrPwd"

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVPNList()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 838
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v4

    .line 839
    .local v4, uid:I
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 841
    .local v3, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-nez v3, :cond_1

    .line 857
    :cond_0
    return-object v0

    .line 845
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 849
    const/4 v2, 0x0

    .line 851
    .local v2, position:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    .line 853
    .local v0, VpnList:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 854
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    iget-object v5, v5, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    aput-object v5, v0, v2

    .line 855
    add-int/lit8 v2, v2, 0x1

    .line 853
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isAdminProfile(Ljava/lang/String;)Z
    .locals 7
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 813
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 814
    iget-object v4, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "VPN"

    const-string v6, "VpnID"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 816
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 831
    :cond_0
    :goto_0
    return v3

    .line 819
    :cond_1
    if-eqz p1, :cond_0

    .line 822
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 824
    .local v0, AdminVpnId:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 827
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 828
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isL2TPSecretEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "profileName"

    .prologue
    const/4 v3, 0x0

    .line 737
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 738
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 750
    :cond_0
    :goto_0
    return v3

    .line 741
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    .line 742
    .local v1, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 743
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 744
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    iget-object v2, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 746
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    iget-object v2, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_2

    .line 743
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isPPTPEncryptionEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "profileName"

    .prologue
    const/4 v3, 0x0

    .line 787
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 789
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 805
    :goto_0
    return v2

    .line 792
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    .line 793
    .local v1, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 794
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 795
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    iget-object v2, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 797
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    iget v2, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->type:I

    if-nez v2, :cond_1

    .line 798
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    iget-boolean v2, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->mppe:Z

    goto :goto_0

    :cond_1
    move v2, v3

    .line 800
    goto :goto_0

    .line 794
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    :cond_3
    move v2, v3

    .line 805
    goto :goto_0
.end method

.method public declared-synchronized setCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "profileName"
    .parameter "certificate"

    .prologue
    .line 556
    monitor-enter p0

    const/4 v4, 0x0

    .line 557
    .local v4, ret:Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 558
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 561
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 562
    .local v1, index:I
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 563
    .local v3, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 564
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 565
    .local v2, newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    iput-object p2, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->ipsecCaCert:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    :try_start_1
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 568
    const/4 v4, 0x1

    .end local v1           #index:I
    .end local v2           #newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v3           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :cond_0
    move v5, v4

    .line 574
    :goto_0
    monitor-exit p0

    return v5

    .line 569
    .restart local v1       #index:I
    .restart local v2       #newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .restart local v3       #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 570
    .local v0, e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_0

    .line 556
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #index:I
    .end local v2           #newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v3           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setEncryptionEnabledForPPTP(Ljava/lang/String;Z)Z
    .locals 7
    .parameter "profileName"
    .parameter "enabled"

    .prologue
    const/4 v5, 0x0

    .line 759
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 760
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 780
    :cond_0
    :goto_0
    monitor-exit p0

    return v5

    .line 764
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 765
    .local v1, index:I
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 766
    .local v4, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 767
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 768
    .local v3, oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    if-eqz v3, :cond_0

    iget v6, v3, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->type:I

    if-nez v6, :cond_0

    .line 769
    move-object v2, v3

    .line 770
    .local v2, newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    iput-boolean p2, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->mppe:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 772
    :try_start_2
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 773
    const/4 v5, 0x1

    goto :goto_0

    .line 774
    :catch_0
    move-exception v0

    .line 775
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 759
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #index:I
    .end local v2           #newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v3           #oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v4           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setId(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "profileName"
    .parameter "Id"

    .prologue
    const/4 v8, 0x0

    .line 143
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_1

    .line 174
    :cond_0
    :goto_0
    monitor-exit p0

    return v8

    .line 146
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v6

    .line 147
    .local v6, uid:I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    .local v1, cv:Landroid/content/ContentValues;
    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v3

    .line 151
    .local v3, index:I
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v5

    .line 152
    .local v5, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 153
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 154
    .local v4, profile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    if-eqz v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 155
    iput-object p2, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    .line 156
    invoke-direct {p0, v4, v3}, Lcom/android/server/enterprise/VpnInfoPolicy;->checkDuplicateName(Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 157
    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)V

    .line 158
    const-string v9, "adminUid"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    const-string v9, "VpnID"

    iget-object v10, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "VpnID"

    aput-object v10, v0, v9

    .line 161
    .local v0, columns:[Ljava/lang/String;
    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    iget-object v10, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    aput-object v10, v7, v9

    .line 164
    .local v7, values:[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v10, "VPN"

    invoke-virtual {v9, v10, v0, v7, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v8

    goto :goto_0

    .line 170
    .end local v0           #columns:[Ljava/lang/String;
    .end local v3           #index:I
    .end local v4           #profile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v5           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    .end local v7           #values:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 171
    .local v2, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 143
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #uid:I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public declared-synchronized setL2TPSecret(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 7
    .parameter "profileName"
    .parameter "enabled"
    .parameter "secret"

    .prologue
    const/4 v5, 0x0

    .line 682
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 683
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 684
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 685
    .local v1, index:I
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 686
    .local v4, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 687
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 688
    .local v3, oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    const/4 v2, 0x0

    .line 689
    .local v2, newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    if-eqz v3, :cond_0

    .line 690
    move-object v2, v3

    .line 691
    if-eqz p2, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 692
    iput-object p3, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->l2tpSecret:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    :goto_0
    :try_start_1
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 700
    const/4 v5, 0x1

    .line 709
    .end local v1           #index:I
    .end local v2           #newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v3           #oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v4           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :cond_0
    :goto_1
    monitor-exit p0

    return v5

    .line 693
    .restart local v1       #index:I
    .restart local v2       #newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .restart local v3       #oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .restart local v4       #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :cond_1
    if-nez p2, :cond_0

    .line 694
    :try_start_2
    const-string v6, ""

    iput-object v6, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->l2tpSecret:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 682
    .end local v1           #index:I
    .end local v2           #newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v3           #oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v4           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 701
    .restart local v1       #index:I
    .restart local v2       #newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .restart local v3       #oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .restart local v4       #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 702
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "profileName"
    .parameter "name"

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x41

    if-lt v5, v6, :cond_0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_1

    .line 185
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 186
    .local v1, index:I
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 187
    .local v4, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 188
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 189
    .local v3, oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    const/4 v2, 0x0

    .line 190
    .local v2, newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    if-eqz v3, :cond_1

    .line 191
    move-object v2, v3

    .line 192
    iput-object p2, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    .line 193
    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/VpnInfoPolicy;->checkDuplicateName(Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 194
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    const/4 v5, 0x1

    .line 203
    .end local v1           #index:I
    .end local v2           #newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v3           #oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v4           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :goto_0
    monitor-exit p0

    return v5

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setPresharedKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "profileName"
    .parameter "psk"

    .prologue
    .line 507
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 508
    const/4 v5, 0x0

    .line 509
    .local v5, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v6

    if-nez v6, :cond_1

    .line 510
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    .line 513
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 514
    .local v1, index:I
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 515
    .local v4, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 516
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 517
    .local v3, oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    const/4 v2, 0x0

    .line 518
    .local v2, newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    if-eqz v3, :cond_0

    .line 519
    move-object v2, v3

    .line 520
    iput-object p2, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 521
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 523
    :cond_0
    const/4 v5, 0x1

    .line 530
    .end local v1           #index:I
    .end local v2           #newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v3           #oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v4           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :cond_1
    :goto_0
    monitor-exit p0

    return v5

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_0

    .line 507
    .end local v0           #e:Ljava/io/IOException;
    .end local v5           #ret:Z
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized setServerName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "profileName"
    .parameter "name"

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 213
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 214
    .local v1, index:I
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 215
    .local v4, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 216
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 217
    .local v3, oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    const/4 v2, 0x0

    .line 218
    .local v2, newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    if-eqz v3, :cond_0

    .line 219
    move-object v2, v3

    .line 220
    iput-object p2, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->server:Ljava/lang/String;

    .line 221
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 222
    const/4 v5, 0x1

    .line 229
    .end local v1           #index:I
    .end local v2           #newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v3           #oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v4           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :goto_0
    monitor-exit p0

    return v5

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setUserCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "profileName"
    .parameter "certificate"

    .prologue
    .line 602
    monitor-enter p0

    const/4 v4, 0x0

    .line 603
    .local v4, ret:Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 604
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 607
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 608
    .local v1, index:I
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 609
    .local v3, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 610
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 611
    .local v2, newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    iput-object p2, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->ipsecUserCert:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    :try_start_1
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 614
    const/4 v4, 0x1

    .end local v1           #index:I
    .end local v2           #newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v3           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :cond_0
    move v5, v4

    .line 620
    :goto_0
    monitor-exit p0

    return v5

    .line 615
    .restart local v1       #index:I
    .restart local v2       #newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .restart local v3       #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 616
    .local v0, e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_0

    .line 602
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #index:I
    .end local v2           #newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v3           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setUserName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "profileName"
    .parameter "userName"

    .prologue
    const/4 v8, 0x0

    .line 237
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v6

    .line 238
    .local v6, uid:I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 239
    .local v1, cv:Landroid/content/ContentValues;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-nez v9, :cond_0

    .line 241
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v3

    .line 242
    .local v3, index:I
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v5

    .line 243
    .local v5, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 244
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 245
    .local v4, profile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    if-eqz v4, :cond_0

    .line 246
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 247
    iput-object p2, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    .line 248
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->saveLogin:Z

    .line 253
    :goto_0
    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)V

    .line 254
    const-string v9, "adminUid"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 255
    const-string v9, "VpnID"

    iget-object v10, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v9, "UsrName"

    iget-object v10, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "VpnID"

    aput-object v10, v0, v9

    .line 258
    .local v0, columns:[Ljava/lang/String;
    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    iget-object v10, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    aput-object v10, v7, v9

    .line 261
    .local v7, values:[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v10, "VPN"

    invoke-virtual {v9, v10, v0, v7, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    .line 268
    .end local v0           #columns:[Ljava/lang/String;
    .end local v3           #index:I
    .end local v4           #profile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v5           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    .end local v7           #values:[Ljava/lang/String;
    :cond_0
    :goto_1
    monitor-exit p0

    return v8

    .line 250
    .restart local v3       #index:I
    .restart local v4       #profile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .restart local v5       #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :cond_1
    const/4 v9, 0x0

    :try_start_2
    iput-boolean v9, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->saveLogin:Z

    .line 251
    const-string v9, ""

    iput-object v9, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 264
    .end local v3           #index:I
    .end local v4           #profile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v5           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catch_0
    move-exception v2

    .line 265
    .local v2, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 237
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #uid:I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public declared-synchronized setUserPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "profileName"
    .parameter "pwd"

    .prologue
    const/4 v9, 0x0

    .line 276
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 278
    .local v7, uid:I
    if-eqz p2, :cond_0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 279
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v3

    .line 280
    .local v3, index:I
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v6

    .line 281
    .local v6, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 282
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 283
    .local v5, oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    const/4 v4, 0x0

    .line 284
    .local v4, newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    if-eqz v5, :cond_0

    .line 285
    move-object v4, v5

    .line 286
    iput-object p2, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    .line 287
    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)V

    .line 288
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 289
    .local v1, cv:Landroid/content/ContentValues;
    const-string v10, "UsrPwd"

    iget-object v11, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v10, "adminUid"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    const-string v10, "VpnID"

    iget-object v11, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const/4 v10, 0x2

    new-array v0, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v0, v10

    const/4 v10, 0x1

    const-string v11, "VpnID"

    aput-object v11, v0, v10

    .line 295
    .local v0, columns:[Ljava/lang/String;
    const/4 v10, 0x2

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x1

    iget-object v11, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    aput-object v11, v8, v10

    .line 300
    .local v8, values:[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "VPN"

    invoke-virtual {v10, v11, v0, v8, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    .line 308
    .end local v0           #columns:[Ljava/lang/String;
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #index:I
    .end local v4           #newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v5           #oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v6           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    .end local v8           #values:[Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return v9

    .line 305
    :catch_0
    move-exception v2

    .line 306
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 276
    .end local v2           #e:Ljava/lang/Exception;
    .end local v7           #uid:I
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public declared-synchronized setVpnProfile(Ljava/lang/String;)Z
    .locals 1
    .parameter "sName"

    .prologue
    .line 1110
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1128
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
