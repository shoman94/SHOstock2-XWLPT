.class final Lcom/android/internal/telephony/cat/CatEventDownload$1;
.super Ljava/lang/Object;
.source "CatEventDownload.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatEventDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/internal/telephony/cat/CatEventDownload;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cat/CatEventDownload;
    .locals 5
    .parameter "source"

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 75
    .local v1, eventType:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, language:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 77
    .local v0, browserTerminationCause:I
    sparse-switch v1, :sswitch_data_0

    .line 90
    new-instance v3, Lcom/android/internal/telephony/cat/CatEventDownload;

    const/16 v4, 0xfe

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/CatEventDownload;-><init>(I)V

    :goto_0
    return-object v3

    .line 80
    :sswitch_0
    new-instance v3, Lcom/android/internal/telephony/cat/CatEventDownload;

    invoke-direct {v3, v1}, Lcom/android/internal/telephony/cat/CatEventDownload;-><init>(I)V

    goto :goto_0

    .line 82
    :sswitch_1
    new-instance v3, Lcom/android/internal/telephony/cat/CatEventDownload;

    invoke-direct {v3, v1, v2}, Lcom/android/internal/telephony/cat/CatEventDownload;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 85
    :sswitch_2
    new-instance v3, Lcom/android/internal/telephony/cat/CatEventDownload;

    invoke-direct {v3, v1, v2}, Lcom/android/internal/telephony/cat/CatEventDownload;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 88
    :sswitch_3
    new-instance v3, Lcom/android/internal/telephony/cat/CatEventDownload;

    invoke-direct {v3, v1, v0}, Lcom/android/internal/telephony/cat/CatEventDownload;-><init>(II)V

    goto :goto_0

    .line 77
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x7 -> :sswitch_1
        0x8 -> :sswitch_3
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CatEventDownload$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cat/CatEventDownload;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/cat/CatEventDownload;
    .locals 1
    .parameter "size"

    .prologue
    .line 96
    new-array v0, p1, [Lcom/android/internal/telephony/cat/CatEventDownload;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CatEventDownload$1;->newArray(I)[Lcom/android/internal/telephony/cat/CatEventDownload;

    move-result-object v0

    return-object v0
.end method
