.class public Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;
.super Lcom/android/internal/telephony/IccSmsInterfaceManager;
.source "SimSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field private static final EVENT_GET_CB_CONFIG_DONE:I = 0x9

.field private static final EVENT_LOAD_DONE:I = 0x1

.field private static final EVENT_LOAD_ONE_DONE:I = 0x7

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x5

.field private static final EVENT_SET_AREAMAIL_CB_RSP:I = 0x8

.field private static final EVENT_SET_BROADCAST_ACTIVATION_DONE:I = 0x3

.field private static final EVENT_SET_BROADCAST_CONFIG_DONE:I = 0x4

.field private static final EVENT_UPDATE_DONE:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final SMS_CB_CODE_SCHEME_MAX:I = 0xff

.field private static final SMS_CB_CODE_SCHEME_MIN:I

.field private static mCbConfig:Landroid/telephony/gsm/CbConfig;


# instance fields
.field private mCellBroadcastRangeManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;

.field private mCellBroadcastSubscriptions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mSms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsPdu:[B

.field private mSuccess:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 1
    .parameter "phone"
    .parameter "dispatcher"

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCellBroadcastSubscriptions:Ljava/util/HashMap;

    .line 67
    new-instance v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;-><init>(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;

    .line 90
    new-instance v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;-><init>(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    .line 165
    iput-object p2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSms:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSms:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsPdu:[B

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsPdu:[B

    return-object p1
.end method

.method static synthetic access$502(Landroid/telephony/gsm/CbConfig;)Landroid/telephony/gsm/CbConfig;
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    sput-object p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCbConfig:Landroid/telephony/gsm/CbConfig;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Z

    move-result v0

    return v0
.end method

.method private handleSmses(Ljava/util/ArrayList;)V
    .locals 14
    .parameter "messages"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 380
    const-string v0, "SIMRecords - handleSmses"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 384
    .local v6, count:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 385
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v3, v0

    check-cast v3, [B

    .line 387
    .local v3, ba:[B
    aget-byte v0, v3, v12

    if-eqz v0, :cond_0

    .line 388
    const-string v0, "ENF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, v3, v12

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_0
    aget-byte v0, v3, v12

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 394
    array-length v8, v3

    .line 398
    .local v8, n:I
    add-int/lit8 v0, v8, -0x1

    new-array v9, v0, [B

    .line 399
    .local v9, pdu:[B
    add-int/lit8 v0, v8, -0x1

    invoke-static {v3, v13, v9, v12, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    aput-byte v13, v3, v12

    .line 406
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    const/16 v1, 0x6f3c

    add-int/lit8 v2, v7, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x5

    add-int/lit8 v11, v7, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 384
    .end local v8           #n:I
    .end local v9           #pdu:[B
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 411
    .end local v3           #ba:[B
    :cond_2
    return-void
.end method

.method private setByte(SLjava/io/ByteArrayOutputStream;)V
    .locals 2
    .parameter "a"
    .parameter "out"

    .prologue
    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, c:I
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 459
    shr-int/lit8 v0, p1, 0x8

    .line 460
    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 461
    return-void
.end method

.method private setCellBroadcastActivation(Z)Z
    .locals 5
    .parameter "activate"

    .prologue
    .line 624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling setCellBroadcastActivation("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 626
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 627
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 629
    .local v1, response:Landroid/os/Message;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    .line 630
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setGsmBroadcastActivation(ZLandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 637
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 639
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    return v2

    .line 634
    :catch_0
    move-exception v0

    .line 635
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to set cell broadcast activation"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 637
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Z
    .locals 5
    .parameter "configs"

    .prologue
    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling setGsmBroadcastConfig with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " configurations"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 606
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 607
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 609
    .local v1, response:Landroid/os/Message;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    .line 610
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 617
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 619
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    return v2

    .line 614
    :catch_0
    move-exception v0

    .line 615
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to set cell broadcast config"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 617
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method


# virtual methods
.method public copyMessageToIccEf(I[B[B)Z
    .locals 6
    .parameter "status"
    .parameter "pdu"
    .parameter "smsc"

    .prologue
    const/4 v2, 0x0

    .line 288
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getSMSavailable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 290
    const-string v3, "copyMessageToIccEf : SMS Not Avaliable"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 311
    :goto_0
    return v2

    .line 294
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyMessageToIccEf: status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "pdu=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), smsm=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 297
    const-string v2, "Copying message to SIM"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 298
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 299
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    .line 300
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 302
    .local v1, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, p1, v4, v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 310
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 311
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to update by index"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 310
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public disableCellBroadcast(I)Z
    .locals 1
    .parameter "messageIdentifier"

    .prologue
    .line 493
    invoke-virtual {p0, p1, p1}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->disableCellBroadcastRange(II)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcastRange(II)Z
    .locals 6
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 535
    const-string v4, "disableCellBroadcastRange"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 537
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 539
    .local v1, context:Landroid/content/Context;
    const-string v4, "android.permission.RECEIVE_SMS"

    const-string v5, "Disabling cell broadcast SMS"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, client:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;

    invoke-virtual {v4, p1, p2, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;->disableRange(IILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 547
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove cell broadcast subscription for MID range "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 558
    :goto_0
    return v2

    .line 553
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed cell broadcast subscription for MID range "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 556
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->setCellBroadcastActivation(Z)Z

    move v2, v3

    .line 558
    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public enableCellBroadcast(I)Z
    .locals 1
    .parameter "messageIdentifier"

    .prologue
    .line 489
    invoke-virtual {p0, p1, p1}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->enableCellBroadcastRange(II)Z

    move-result v0

    return v0
.end method

.method public enableCellBroadcastRange(II)Z
    .locals 6
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 502
    const-string v4, "enableCellBroadcastRange"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 504
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 506
    .local v1, context:Landroid/content/Context;
    const-string v4, "android.permission.RECEIVE_SMS"

    const-string v5, "Enabling cell broadcast SMS"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, client:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;

    invoke-virtual {v4, p1, p2, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;->enableRange(IILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 514
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add cell broadcast subscription for MID range "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 525
    :goto_0
    return v2

    .line 520
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added cell broadcast subscription for MID range "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 523
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->setCellBroadcastActivation(Z)Z

    move v2, v3

    .line 525
    goto :goto_0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 174
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    const-string v1, "GSM"

    const-string v2, "SimSmsInterfaceManager finalized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, throwable:Ljava/lang/Throwable;
    const-string v1, "GSM"

    const-string v2, "Error while finalizing:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAllMessagesFromIccEf()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    const-string v3, "getAllMessagesFromEF"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 322
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 324
    .local v0, context:Landroid/content/Context;
    const-string v3, "android.permission.RECEIVE_SMS"

    const-string v4, "Reading messages from SIM"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 328
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 329
    .local v2, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    const/16 v5, 0x6f3c

    invoke-virtual {v3, v5, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 336
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 337
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSms:Ljava/util/List;

    return-object v3

    .line 333
    :catch_0
    move-exception v1

    .line 334
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "interrupted while trying to load from the SIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 336
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v2           #response:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public getCbSettings()[B
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 415
    const-string v3, "getCbSettings"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 416
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 418
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 419
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->getCbConfig(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 425
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 427
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " bCBEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCbConfig:Landroid/telephony/gsm/CbConfig;

    iget-boolean v4, v4, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " selectedId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v4, v4, Landroid/telephony/gsm/CbConfig;->selectedId:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msgIdMaxCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v4, v4, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msgIdCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCbConfig:Landroid/telephony/gsm/CbConfig;

    iget v4, v4, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 432
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget-object v3, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v3, v3, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 433
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB] msgIDs =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v4, v4, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 432
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 422
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 423
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "interrupted"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 425
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 436
    .restart local v1       #i:I
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCbConfig:Landroid/telephony/gsm/CbConfig;

    iget-boolean v3, v3, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    if-ne v3, v7, :cond_1

    .line 437
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 442
    :goto_2
    sget-object v3, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v3, v3, Landroid/telephony/gsm/CbConfig;->selectedId:C

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 443
    sget-object v3, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v3, v3, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 444
    sget-object v3, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCbConfig:Landroid/telephony/gsm/CbConfig;

    iget v3, v3, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 446
    const/4 v1, 0x0

    :goto_3
    sget-object v3, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCbConfig:Landroid/telephony/gsm/CbConfig;

    iget v3, v3, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    if-ge v1, v3, :cond_2

    .line 447
    sget-object v3, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v3, v3, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v3, v3, v1

    invoke-direct {p0, v3, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->setByte(SLjava/io/ByteArrayOutputStream;)V

    .line 446
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 439
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 450
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CB Config Out Bytes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public getMessagesFromIccEf(I)[B
    .locals 6
    .parameter "index"

    .prologue
    .line 347
    const-string v3, "getMessagesFromEF"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 349
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 351
    .local v0, context:Landroid/content/Context;
    const-string v3, "android.permission.RECEIVE_SMS"

    const-string v4, "Reading messages from SIM"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 355
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 356
    .local v2, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    const/16 v5, 0x6f3c

    invoke-virtual {v3, v5, p1, v2}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 363
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 365
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMessagesFromIccEf = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsPdu:[B

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 366
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SimSmsInterfaceManager] getMessagesFromIccEf = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsPdu:[B

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsPdu:[B

    return-object v3

    .line 360
    :catch_0
    move-exception v1

    .line 361
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "interrupted while trying to load from the SIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 363
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v2           #response:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public getSMSAvailable()Z
    .locals 2

    .prologue
    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSMSAvailable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSMSavailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSMSavailable()Z

    move-result v0

    return v0
.end method

.method public getSMSPAvailable()Z
    .locals 2

    .prologue
    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSMSPAvailable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSMSPavailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSMSPavailable()Z

    move-result v0

    return v0
.end method

.method public getSimFullStatus()Z
    .locals 2

    .prologue
    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimFullStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsStorageMonitor;->getSimFullStatus()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsStorageMonitor;->getSimFullStatus()Z

    move-result v0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 644
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimSmsInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    return-void
.end method

.method public resetSimFullStatus()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsStorageMonitor;->resetSimFullStatus()V

    .line 474
    return-void
.end method

.method public updateMessageOnIccEf(II[B)Z
    .locals 8
    .parameter "index"
    .parameter "status"
    .parameter "pdu"

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateMessageOnIccEf: index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 198
    const-string v0, "Updating message on SIM"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 199
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 200
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 203
    .local v5, response:Landroid/os/Message;
    if-nez p2, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, v5}, Lcom/android/internal/telephony/CommandsInterface;->deleteSmsOnSim(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 218
    :goto_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    return v0

    .line 208
    :cond_0
    :try_start_3
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->makeSmsRecordData(I[B)[B

    move-result-object v3

    .line 209
    .local v3, record:[B
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f3c

    const/4 v4, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 218
    .end local v3           #record:[B
    .end local v5           #response:Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 215
    .restart local v5       #response:Landroid/os/Message;
    :catch_0
    move-exception v6

    .line 216
    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v0, "interrupted while trying to update by index"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public updateSmsServiceCenterOnSimEf([B)Z
    .locals 5
    .parameter "smsc"

    .prologue
    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSmsServiceCenterOnSimEf: smsc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 237
    const-string v2, "Updating smsc on SIM"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 239
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 240
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    .line 241
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 243
    .local v1, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 251
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 252
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    return v2

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to update by index"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public updateSmsServiceCenterStringOnSimEf(Ljava/lang/String;)Z
    .locals 5
    .parameter "smsc"

    .prologue
    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSmsServiceCenterStringOnSimEf: smsc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 259
    const-string v2, "Updating smsc on SIM"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 261
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 262
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    .line 263
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 265
    .local v1, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 273
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 274
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    return v2

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to update by index"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method
