.class public Landroid/net/wifi/WifiInfo;
.super Ljava/lang/Object;
.source "WifiInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final LINK_SPEED_UNITS:Ljava/lang/String; = "Mbps"

.field private static final TAG:Ljava/lang/String; = "WifiInfo"

.field private static final WIFI_MAC_FILE:Ljava/lang/String; = "/efs/wifi/.mac.info"

.field private static final stateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/net/wifi/SupplicantState;",
            "Landroid/net/NetworkInfo$DetailedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBSSID:Ljava/lang/String;

.field private mExplicitConnect:Z

.field private mHiddenSSID:Z

.field private mIpAddress:Ljava/net/InetAddress;

.field private mLinkSpeed:I

.field private mMacAddress:Ljava/lang/String;

.field private mNetworkId:I

.field private mRssi:I

.field private mSSID:Ljava/lang/String;

.field private mSupplicantState:Landroid/net/wifi/SupplicantState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/net/wifi/SupplicantState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    .line 51
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    new-instance v0, Landroid/net/wifi/WifiInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mSSID:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    .line 89
    iput v1, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    .line 90
    sget-object v0, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 91
    const/16 v0, -0x270f

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    .line 92
    iput v1, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    .line 93
    iput-boolean v2, p0, Landroid/net/wifi/WifiInfo;->mHiddenSSID:Z

    .line 94
    iput-boolean v2, p0, Landroid/net/wifi/WifiInfo;->mExplicitConnect:Z

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiInfo;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 104
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    .line 105
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mSSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mSSID:Ljava/lang/String;

    .line 106
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    .line 107
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mHiddenSSID:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mHiddenSSID:Z

    .line 108
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mRssi:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    .line 109
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    .line 110
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    .line 111
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    .line 112
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mExplicitConnect:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mExplicitConnect:Z

    .line 114
    :cond_0
    return-void
.end method

.method static synthetic access$002(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Landroid/net/wifi/WifiInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mExplicitConnect:Z

    return p1
.end method

.method static synthetic access$302(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/SupplicantState;)Landroid/net/wifi/SupplicantState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object p1
.end method

.method public static getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1
    .parameter "suppState"

    .prologue
    .line 290
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method public static getMacAddressFromFile()Ljava/lang/String;
    .locals 12

    .prologue
    .line 191
    const/4 v3, 0x0

    .line 192
    .local v3, in:Ljava/io/DataInputStream;
    const/4 v5, 0x0

    .line 193
    .local v5, length:I
    const/16 v6, 0x11

    .line 194
    .local v6, macLength:I
    const/16 v9, 0x20

    new-array v0, v9, [B

    .line 195
    .local v0, buffer:[B
    const/4 v7, 0x0

    .line 198
    .local v7, retValue:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    const-string v11, "/efs/wifi/.mac.info"

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 199
    .end local v3           #in:Ljava/io/DataInputStream;
    .local v4, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v5

    .line 200
    if-lt v5, v6, :cond_0

    .line 201
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9, v6}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 202
    .end local v7           #retValue:Ljava/lang/String;
    .local v8, retValue:Ljava/lang/String;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v7

    .line 207
    .end local v8           #retValue:Ljava/lang/String;
    .restart local v7       #retValue:Ljava/lang/String;
    :cond_0
    if-eqz v4, :cond_3

    .line 209
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v3, v4

    .line 216
    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    :cond_1
    :goto_0
    return-object v7

    .line 210
    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    :catch_0
    move-exception v1

    .line 211
    .local v1, e:Ljava/io/IOException;
    const-string v9, "WifiInfo"

    const-string v10, "Failed to close .mac.info file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 212
    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    goto :goto_0

    .line 204
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 205
    .local v2, ignore:Ljava/io/IOException;
    :goto_1
    :try_start_4
    const-string v9, "WifiInfo"

    const-string v10, "Failed to get MAC address from /efs/wifi/.mac.info"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 207
    if-eqz v3, :cond_1

    .line 209
    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 210
    :catch_2
    move-exception v1

    .line 211
    .restart local v1       #e:Ljava/io/IOException;
    const-string v9, "WifiInfo"

    const-string v10, "Failed to close .mac.info file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #ignore:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_2
    if-eqz v3, :cond_2

    .line 209
    :try_start_6
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 212
    :cond_2
    :goto_3
    throw v9

    .line 210
    :catch_3
    move-exception v1

    .line 211
    .restart local v1       #e:Ljava/io/IOException;
    const-string v10, "WifiInfo"

    const-string v11, "Failed to close .mac.info file"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 207
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    goto :goto_2

    .end local v3           #in:Ljava/io/DataInputStream;
    .end local v7           #retValue:Ljava/lang/String;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v8       #retValue:Ljava/lang/String;
    :catchall_2
    move-exception v9

    move-object v7, v8

    .end local v8           #retValue:Ljava/lang/String;
    .restart local v7       #retValue:Ljava/lang/String;
    move-object v3, v4

    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    goto :goto_2

    .line 204
    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .end local v3           #in:Ljava/io/DataInputStream;
    .end local v7           #retValue:Ljava/lang/String;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v8       #retValue:Ljava/lang/String;
    :catch_5
    move-exception v2

    move-object v7, v8

    .end local v8           #retValue:Ljava/lang/String;
    .restart local v7       #retValue:Ljava/lang/String;
    move-object v3, v4

    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    :cond_3
    move-object v3, v4

    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    goto :goto_0
.end method

.method static valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;
    .locals 2
    .parameter "stateName"

    .prologue
    .line 304
    const-string v1, "4WAY_HANDSHAKE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    .line 310
    :goto_0
    return-object v1

    .line 308
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/SupplicantState;->valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public getBSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getHiddenSSID()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mHiddenSSID:Z

    return v0
.end method

.method public getIpAddress()I
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 268
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    invoke-static {v0}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/InetAddress;)I

    move-result v0

    goto :goto_0
.end method

.method public getLinkSpeed()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    return v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    .line 185
    :cond_0
    invoke-static {}, Landroid/net/wifi/WifiInfo;->getMacAddressFromFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNetworkId()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    return v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getSupplicantState()Landroid/net/wifi/SupplicantState;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object v0
.end method

.method public isExplicitConnect()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mExplicitConnect:Z

    return v0
.end method

.method setBSSID(Ljava/lang/String;)V
    .locals 0
    .parameter "BSSID"

    .prologue
    .line 134
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setExplicitConnect(Z)V
    .locals 0
    .parameter "explicitConnect"

    .prologue
    .line 235
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mExplicitConnect:Z

    .line 236
    return-void
.end method

.method public setHiddenSSID(Z)V
    .locals 0
    .parameter "hiddenSSID"

    .prologue
    .line 281
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mHiddenSSID:Z

    .line 282
    return-void
.end method

.method setInetAddress(Ljava/net/InetAddress;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 263
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    .line 264
    return-void
.end method

.method setLinkSpeed(I)V
    .locals 0
    .parameter "linkSpeed"

    .prologue
    .line 170
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    .line 171
    return-void
.end method

.method setMacAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "macAddress"

    .prologue
    .line 178
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    .line 179
    return-void
.end method

.method setNetworkId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 220
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    .line 221
    return-void
.end method

.method setRssi(I)V
    .locals 0
    .parameter "rssi"

    .prologue
    .line 157
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    .line 158
    return-void
.end method

.method setSSID(Ljava/lang/String;)V
    .locals 1
    .parameter "SSID"

    .prologue
    .line 117
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mSSID:Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mHiddenSSID:Z

    .line 120
    return-void
.end method

.method setSupplicantState(Landroid/net/wifi/SupplicantState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 259
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 260
    return-void
.end method

.method setSupplicantState(Ljava/lang/String;)V
    .locals 1
    .parameter "stateName"

    .prologue
    .line 300
    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 301
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 317
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 318
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v0, "<none>"

    .line 320
    .local v0, none:Ljava/lang/String;
    const-string v2, "SSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mSSID:Ljava/lang/String;

    if-nez v2, :cond_0

    move-object v2, v0

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", BSSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", MAC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    if-nez v2, :cond_2

    move-object v2, v0

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Supplicant state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    if-nez v3, :cond_3

    .end local v0           #none:Ljava/lang/String;
    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", RSSI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Link speed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Net ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Explicit connect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/WifiInfo;->mExplicitConnect:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 330
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 320
    .restart local v0       #none:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mSSID:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 340
    iget v2, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    iget v2, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget v2, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    if-eqz v2, :cond_0

    .line 344
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 345
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 349
    :goto_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 350
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 351
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 352
    iget-boolean v2, p0, Landroid/net/wifi/WifiInfo;->mExplicitConnect:Z

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 353
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/SupplicantState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 354
    return-void

    .line 347
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 352
    goto :goto_1
.end method
