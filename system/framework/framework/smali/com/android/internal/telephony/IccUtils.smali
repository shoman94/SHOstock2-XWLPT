.class public Lcom/android/internal/telephony/IccUtils;
.super Ljava/lang/Object;
.source "IccUtils.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "IccUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MccMncConvert(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "s"

    .prologue
    const/4 v4, 0x2

    .line 653
    const/4 v0, 0x0

    .line 655
    .local v0, MCC:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 657
    .local v1, ret:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 658
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 659
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 661
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 663
    const-string v2, "IccUtils"

    const-string v3, "[MccMncConvert] MCC Value is invalid(\'fff\')!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const/4 v2, 0x0

    .line 701
    :goto_0
    return-object v2

    .line 667
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ddd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 668
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 672
    :cond_1
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 673
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 675
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x46

    if-eq v2, v3, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x66

    if-ne v2, v3, :cond_4

    .line 682
    :cond_2
    const/16 v2, 0x136

    if-lt v0, v2, :cond_3

    const/16 v2, 0x13c

    if-gt v0, v2, :cond_3

    .line 685
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    :cond_3
    :goto_1
    const-string v2, "IccUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MccMncConvert] Convert Result :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 696
    :cond_4
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static SSbcdToString([BII)Ljava/lang/String;
    .locals 10
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v9, 0x23

    const/16 v8, 0xb

    const/16 v7, 0xa

    const/16 v6, 0x9

    const/4 v5, 0x1

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, p2, 0x2

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 109
    .local v1, ret:Ljava/lang/StringBuilder;
    aget-byte v4, p0, p1

    and-int/lit16 v2, v4, 0xff

    .line 111
    .local v2, ton:I
    add-int/lit8 v0, p1, 0x1

    .local v0, i:I
    :goto_0
    add-int v4, p1, p2

    if-ge v0, v4, :cond_4

    .line 114
    aget-byte v4, p0, v0

    and-int/lit8 v3, v4, 0xf

    .line 115
    .local v3, v:I
    if-ne v3, v7, :cond_2

    .line 116
    const/16 v4, 0x2a

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    const/16 v4, 0x91

    if-ne v2, v4, :cond_0

    add-int/lit8 v4, p1, 0x1

    sub-int v4, v0, v4

    if-le v4, v5, :cond_0

    .line 118
    const/4 v2, 0x0

    .line 119
    const/16 v4, 0x2b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    :cond_0
    :goto_1
    aget-byte v4, p0, v0

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v3, v4, 0xf

    .line 129
    if-ne v3, v7, :cond_6

    .line 130
    const/16 v4, 0x2a

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    const/16 v4, 0x91

    if-ne v2, v4, :cond_1

    add-int/lit8 v4, p1, 0x1

    sub-int v4, v0, v4

    if-le v4, v5, :cond_1

    .line 132
    const/4 v2, 0x0

    .line 133
    const/16 v4, 0x2b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_2
    if-ne v3, v8, :cond_3

    .line 122
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 124
    :cond_3
    if-le v3, v6, :cond_5

    .line 144
    .end local v3           #v:I
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 125
    .restart local v3       #v:I
    :cond_5
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 135
    :cond_6
    if-ne v3, v8, :cond_7

    .line 136
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 138
    :cond_7
    if-gt v3, v6, :cond_4

    .line 139
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static SetupCallbcdToString([BII)Ljava/lang/String;
    .locals 10
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v9, 0x23

    const/16 v8, 0xc

    const/16 v7, 0xb

    const/16 v6, 0xa

    const/16 v5, 0x9

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, p2, 0x2

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 72
    .local v1, ret:Ljava/lang/StringBuilder;
    aget-byte v4, p0, p1

    and-int/lit16 v2, v4, 0xff

    .line 73
    .local v2, ton:I
    const/16 v4, 0x91

    if-ne v2, v4, :cond_0

    const/16 v4, 0x2b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    :cond_0
    add-int/lit8 v0, p1, 0x1

    .local v0, i:I
    :goto_0
    add-int v4, p1, p2

    if-ge v0, v4, :cond_4

    .line 78
    aget-byte v4, p0, v0

    and-int/lit8 v3, v4, 0xf

    .line 79
    .local v3, v:I
    if-ne v3, v6, :cond_1

    .line 80
    const/16 v4, 0x2a

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    :goto_1
    aget-byte v4, p0, v0

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v3, v4, 0xf

    .line 91
    if-ne v3, v6, :cond_6

    .line 92
    const/16 v4, 0x2a

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_1
    if-ne v3, v7, :cond_2

    .line 82
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 83
    :cond_2
    if-ne v3, v8, :cond_3

    .line 84
    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 86
    :cond_3
    if-le v3, v5, :cond_5

    .line 102
    .end local v3           #v:I
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 87
    .restart local v3       #v:I
    :cond_5
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 93
    :cond_6
    if-ne v3, v7, :cond_7

    .line 94
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 95
    :cond_7
    if-ne v3, v8, :cond_8

    .line 96
    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 98
    :cond_8
    if-gt v3, v5, :cond_4

    .line 99
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static SetupMDNbcdToString([BII)Ljava/lang/String;
    .locals 9
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v8, 0x23

    const/16 v7, 0xc

    const/16 v6, 0xb

    const/16 v5, 0xa

    const/16 v4, 0x9

    .line 714
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 716
    .local v1, ret:Ljava/lang/StringBuilder;
    add-int/lit8 v0, p1, 0x1

    .local v0, i:I
    :goto_0
    add-int v3, p1, p2

    if-ge v0, v3, :cond_3

    .line 719
    aget-byte v3, p0, v0

    and-int/lit8 v2, v3, 0xf

    .line 720
    .local v2, v:I
    if-ne v2, v5, :cond_0

    .line 721
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 731
    :goto_1
    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 732
    if-ne v2, v5, :cond_5

    .line 733
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 716
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 722
    :cond_0
    if-ne v2, v6, :cond_1

    .line 723
    const/16 v3, 0x2a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 724
    :cond_1
    if-ne v2, v7, :cond_2

    .line 725
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 727
    :cond_2
    if-le v2, v4, :cond_4

    .line 744
    .end local v2           #v:I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, p2, :cond_8

    .line 745
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 747
    :goto_3
    return-object v3

    .line 728
    .restart local v2       #v:I
    :cond_4
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 734
    :cond_5
    if-ne v2, v6, :cond_6

    .line 735
    const/16 v3, 0x2a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 736
    :cond_6
    if-ne v2, v7, :cond_7

    .line 737
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 739
    :cond_7
    if-gt v2, v4, :cond_3

    .line 740
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 747
    .end local v2           #v:I
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method public static adnStringFieldToString([BII)Ljava/lang/String;
    .locals 13
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 259
    if-nez p2, :cond_0

    .line 260
    const-string v10, ""

    .line 345
    :goto_0
    return-object v10

    .line 262
    :cond_0
    const/4 v10, 0x1

    if-lt p2, v10, :cond_2

    .line 263
    aget-byte v10, p0, p1

    const/16 v11, -0x80

    if-ne v10, v11, :cond_2

    .line 264
    add-int/lit8 v10, p2, -0x1

    div-int/lit8 v9, v10, 0x2

    .line 265
    .local v9, ucslen:I
    const/4 v7, 0x0

    .line 268
    .local v7, ret:Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/lang/String;

    add-int/lit8 v10, p1, 0x1

    mul-int/lit8 v11, v9, 0x2

    const-string/jumbo v12, "utf-16be"

    invoke-direct {v8, p0, v10, v11, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7           #ret:Ljava/lang/String;
    .local v8, ret:Ljava/lang/String;
    move-object v7, v8

    .line 274
    .end local v8           #ret:Ljava/lang/String;
    .restart local v7       #ret:Ljava/lang/String;
    :goto_1
    if-eqz v7, :cond_2

    .line 277
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    .line 278
    :goto_2
    if-lez v9, :cond_1

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const v11, 0xffff

    if-ne v10, v11, :cond_1

    .line 279
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 269
    :catch_0
    move-exception v3

    .line 270
    .local v3, ex:Ljava/io/UnsupportedEncodingException;
    const-string v10, "IccUtils"

    const-string v11, "implausible UnsupportedEncodingException"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 281
    .end local v3           #ex:Ljava/io/UnsupportedEncodingException;
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 286
    .end local v7           #ret:Ljava/lang/String;
    .end local v9           #ucslen:I
    :cond_2
    const/4 v4, 0x0

    .line 287
    .local v4, isucs2:Z
    const/4 v0, 0x0

    .line 288
    .local v0, base:C
    const/4 v5, 0x0

    .line 290
    .local v5, len:I
    const/4 v10, 0x3

    if-lt p2, v10, :cond_6

    aget-byte v10, p0, p1

    const/16 v11, -0x7f

    if-ne v10, v11, :cond_6

    .line 291
    add-int/lit8 v10, p1, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v5, v10, 0xff

    .line 292
    add-int/lit8 v10, p2, -0x3

    if-le v5, v10, :cond_3

    .line 293
    add-int/lit8 v5, p2, -0x3

    .line 295
    :cond_3
    add-int/lit8 v10, p1, 0x2

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x7

    int-to-char v0, v10

    .line 296
    add-int/lit8 p1, p1, 0x3

    .line 297
    const/4 v4, 0x1

    .line 309
    :cond_4
    :goto_3
    if-eqz v4, :cond_a

    .line 310
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .local v7, ret:Ljava/lang/StringBuilder;
    :goto_4
    if-lez v5, :cond_9

    .line 315
    aget-byte v10, p0, p1

    if-gez v10, :cond_5

    .line 316
    aget-byte v10, p0, p1

    and-int/lit8 v10, v10, 0x7f

    add-int/2addr v10, v0

    int-to-char v10, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 317
    add-int/lit8 p1, p1, 0x1

    .line 318
    add-int/lit8 v5, v5, -0x1

    .line 323
    :cond_5
    const/4 v1, 0x0

    .line 324
    .local v1, count:I
    :goto_5
    if-ge v1, v5, :cond_8

    add-int v10, p1, v1

    aget-byte v10, p0, v10

    if-ltz v10, :cond_8

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 298
    .end local v1           #count:I
    .end local v7           #ret:Ljava/lang/StringBuilder;
    :cond_6
    const/4 v10, 0x4

    if-lt p2, v10, :cond_4

    aget-byte v10, p0, p1

    const/16 v11, -0x7e

    if-ne v10, v11, :cond_4

    .line 299
    add-int/lit8 v10, p1, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v5, v10, 0xff

    .line 300
    add-int/lit8 v10, p2, -0x4

    if-le v5, v10, :cond_7

    .line 301
    add-int/lit8 v5, p2, -0x4

    .line 303
    :cond_7
    add-int/lit8 v10, p1, 0x2

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/lit8 v11, p1, 0x3

    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    int-to-char v0, v10

    .line 305
    add-int/lit8 p1, p1, 0x4

    .line 306
    const/4 v4, 0x1

    goto :goto_3

    .line 327
    .restart local v1       #count:I
    .restart local v7       #ret:Ljava/lang/StringBuilder;
    :cond_8
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    add-int/2addr p1, v1

    .line 331
    sub-int/2addr v5, v1

    .line 332
    goto :goto_4

    .line 334
    .end local v1           #count:I
    :cond_9
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 337
    .end local v7           #ret:Ljava/lang/StringBuilder;
    :cond_a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 338
    .local v6, resource:Landroid/content/res/Resources;
    const-string v2, ""

    .line 340
    .local v2, defaultCharset:Ljava/lang/String;
    const v10, 0x1040037

    :try_start_1
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 345
    :goto_6
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, p1, p2, v10}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 342
    :catch_1
    move-exception v10

    goto :goto_6
.end method

.method public static bcdToString([BII)Ljava/lang/String;
    .locals 5
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v4, 0x9

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 50
    .local v1, ret:Ljava/lang/StringBuilder;
    move v0, p1

    .local v0, i:I
    :goto_0
    add-int v3, p1, p2

    if-ge v0, v3, :cond_0

    .line 54
    aget-byte v3, p0, v0

    and-int/lit8 v2, v3, 0xf

    .line 55
    .local v2, v:I
    if-le v2, v4, :cond_1

    .line 65
    .end local v2           #v:I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 56
    .restart local v2       #v:I
    :cond_1
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 60
    const/16 v3, 0xf

    if-ne v2, v3, :cond_2

    .line 50
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_2
    if-gt v2, v4, :cond_0

    .line 62
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static bitToRGB(I)I
    .locals 1
    .parameter "bit"

    .prologue
    .line 523
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 524
    const/4 v0, -0x1

    .line 526
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x100

    goto :goto_0
.end method

.method public static byteToHexString(B)Ljava/lang/String;
    .locals 3
    .parameter "a"

    .prologue
    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 428
    .local v1, ret:Ljava/lang/StringBuilder;
    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v0, v2, 0xf

    .line 430
    .local v0, b:I
    const-string v2, "0123456789abcdef"

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 432
    and-int/lit8 v0, p0, 0xf

    .line 434
    const-string v2, "0123456789abcdef"

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 4
    .parameter "bytes"

    .prologue
    .line 395
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 411
    :goto_0
    return-object v3

    .line 397
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 399
    .local v2, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 402
    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    .line 404
    .local v0, b:I
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 406
    aget-byte v3, p0, v1

    and-int/lit8 v0, v3, 0xf

    .line 408
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 399
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 411
    .end local v0           #b:I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static bytesToString([B)Ljava/lang/String;
    .locals 8
    .parameter "data"

    .prologue
    .line 906
    array-length v4, p0

    int-to-long v0, v4

    .line 907
    .local v0, dataLength:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 909
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    int-to-long v4, v2

    cmp-long v4, v4, v0

    if-gez v4, :cond_0

    aget-byte v4, p0, v2

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 910
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static cdmaBcdByteToInt(B)I
    .locals 3
    .parameter "b"

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 211
    .local v0, ret:I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    .line 212
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    mul-int/lit8 v0, v1, 0xa

    .line 215
    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    .line 216
    and-int/lit8 v1, p0, 0xf

    add-int/2addr v0, v1

    .line 219
    :cond_1
    return v0
.end method

.method public static cdmaBcdToString([BII)Ljava/lang/String;
    .locals 6
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v5, 0x9

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 153
    .local v2, ret:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 154
    .local v0, count:I
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 156
    aget-byte v4, p0, v1

    and-int/lit8 v3, v4, 0xf

    .line 157
    .local v3, v:I
    if-le v3, v5, :cond_0

    const/4 v3, 0x0

    .line 158
    :cond_0
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    add-int/lit8 v0, v0, 0x1

    if-ne v0, p2, :cond_2

    .line 167
    .end local v3           #v:I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 162
    .restart local v3       #v:I
    :cond_2
    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v3, v4, 0xf

    .line 163
    if-le v3, v5, :cond_3

    const/4 v3, 0x0

    .line 164
    :cond_3
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    add-int/lit8 v0, v0, 0x1

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static extractIMSI([B)Ljava/lang/String;
    .locals 13
    .parameter "imsi"

    .prologue
    const/16 v12, 0x8

    .line 830
    const-string v8, "IccUtils"

    const-string v9, "Enter extractIMSI"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/4 v8, 0x5

    aget-byte v8, p0, v8

    invoke-static {v8}, Lcom/android/internal/telephony/IccUtils;->unsigned32(B)J

    move-result-wide v8

    const/16 v10, 0x10

    shl-long/2addr v8, v10

    const/4 v10, 0x4

    aget-byte v10, p0, v10

    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->unsigned32(B)J

    move-result-wide v10

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    const/4 v10, 0x3

    aget-byte v10, p0, v10

    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->unsigned32(B)J

    move-result-wide v10

    or-long v2, v8, v10

    .line 838
    .local v2, min1:J
    const/4 v8, 0x2

    aget-byte v8, p0, v8

    invoke-static {v8}, Lcom/android/internal/telephony/IccUtils;->unsigned32(B)J

    move-result-wide v8

    shl-long/2addr v8, v12

    const/4 v10, 0x1

    aget-byte v10, p0, v10

    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->unsigned32(B)J

    move-result-wide v10

    or-long v4, v8, v10

    .line 839
    .local v4, min2:J
    const/4 v8, 0x6

    aget-byte v8, p0, v8

    invoke-static {v8}, Lcom/android/internal/telephony/IccUtils;->unsigned32(B)J

    move-result-wide v6

    .line 840
    .local v6, mnc:J
    const/16 v8, 0x9

    aget-byte v8, p0, v8

    invoke-static {v8}, Lcom/android/internal/telephony/IccUtils;->unsigned32(B)J

    move-result-wide v8

    shl-long/2addr v8, v12

    aget-byte v10, p0, v12

    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->unsigned32(B)J

    move-result-wide v10

    or-long v0, v8, v10

    .line 842
    .local v0, mcc:J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccUtils;->getStringMCC(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6, v7}, Lcom/android/internal/telephony/IccUtils;->getStringMNC(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4, v5}, Lcom/android/internal/telephony/IccUtils;->getStringMIN2(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2, v3}, Lcom/android/internal/telephony/IccUtils;->getStringMIN1(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static extractRawIMSI([B)Ljava/lang/String;
    .locals 13
    .parameter "imsi"

    .prologue
    const/16 v12, 0x8

    .line 847
    const-string v8, "IccUtils"

    const-string v9, "Enter extractRawIMSI"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const/4 v8, 0x5

    aget-byte v8, p0, v8

    invoke-static {v8}, Lcom/android/internal/telephony/IccUtils;->unsigned32(B)J

    move-result-wide v8

    const/16 v10, 0x10

    shl-long/2addr v8, v10

    const/4 v10, 0x4

    aget-byte v10, p0, v10

    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->unsigned32(B)J

    move-result-wide v10

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    const/4 v10, 0x3

    aget-byte v10, p0, v10

    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->unsigned32(B)J

    move-result-wide v10

    or-long v2, v8, v10

    .line 855
    .local v2, min1:J
    const/4 v8, 0x2

    aget-byte v8, p0, v8

    invoke-static {v8}, Lcom/android/internal/telephony/IccUtils;->unsigned32(B)J

    move-result-wide v8

    shl-long/2addr v8, v12

    const/4 v10, 0x1

    aget-byte v10, p0, v10

    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->unsigned32(B)J

    move-result-wide v10

    or-long v4, v8, v10

    .line 856
    .local v4, min2:J
    const/4 v8, 0x6

    aget-byte v8, p0, v8

    invoke-static {v8}, Lcom/android/internal/telephony/IccUtils;->unsigned32(B)J

    move-result-wide v6

    .line 857
    .local v6, mnc:J
    const/16 v8, 0x9

    aget-byte v8, p0, v8

    invoke-static {v8}, Lcom/android/internal/telephony/IccUtils;->unsigned32(B)J

    move-result-wide v8

    shl-long/2addr v8, v12

    aget-byte v10, p0, v12

    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->unsigned32(B)J

    move-result-wide v10

    or-long v0, v8, v10

    .line 859
    .local v0, mcc:J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static extractUserAgentString([B)Ljava/lang/String;
    .locals 6
    .parameter "data"

    .prologue
    .line 887
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 888
    .local v4, ret:Ljava/lang/StringBuilder;
    const/16 v3, 0xa

    .line 889
    .local v3, length:I
    const/4 v2, 0x0

    .line 891
    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 892
    const-wide/16 v0, 0x0

    .line 893
    .local v0, ch:J
    aget-byte v5, p0, v2

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->unsigned32(B)J

    move-result-wide v0

    .line 894
    long-to-int v5, v0

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 895
    add-int/lit8 v2, v2, 0x1

    .line 896
    goto :goto_0

    .line 898
    .end local v0           #ch:J
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static getCLUT([BII)[I
    .locals 9
    .parameter "rawData"
    .parameter "offset"
    .parameter "number"

    .prologue
    .line 619
    if-nez p0, :cond_1

    .line 620
    const/4 v4, 0x0

    .line 634
    :cond_0
    return-object v4

    .line 623
    :cond_1
    new-array v4, p2, [I

    .line 624
    .local v4, result:[I
    mul-int/lit8 v7, p2, 0x3

    add-int v3, p1, v7

    .line 625
    .local v3, endIndex:I
    move v5, p1

    .line 626
    .local v5, valueIndex:I
    const/4 v1, 0x0

    .line 627
    .local v1, colorIndex:I
    const/high16 v0, -0x100

    .line 629
    .local v0, alpha:I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .end local v1           #colorIndex:I
    .local v2, colorIndex:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #valueIndex:I
    .local v6, valueIndex:I
    aget-byte v7, p0, v5

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v7, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    aget-byte v8, p0, v6

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    add-int/lit8 v6, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v8, p0, v5

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    aput v7, v4, v1

    .line 633
    if-ge v6, v3, :cond_0

    move v1, v2

    .end local v2           #colorIndex:I
    .restart local v1       #colorIndex:I
    move v5, v6

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    goto :goto_0
.end method

.method private static getStringMCC(J)Ljava/lang/String;
    .locals 13
    .parameter "mcc"

    .prologue
    const-wide/16 v11, 0x64

    const-wide/16 v9, 0x31

    const-wide/16 v3, 0x30

    const-wide/16 v7, 0x9

    const-wide/16 v5, 0xa

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 755
    .local v0, strMCC:Ljava/lang/StringBuilder;
    const-wide/16 v1, 0x3e8

    rem-long/2addr p0, v1

    .line 756
    div-long v1, p0, v11

    cmp-long v1, v1, v7

    if-nez v1, :cond_0

    move-wide v1, v3

    :goto_0
    long-to-int v1, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 757
    rem-long/2addr p0, v11

    .line 758
    div-long v1, p0, v5

    cmp-long v1, v1, v7

    if-nez v1, :cond_1

    move-wide v1, v3

    :goto_1
    long-to-int v1, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 759
    rem-long v1, p0, v5

    cmp-long v1, v1, v7

    if-nez v1, :cond_2

    :goto_2
    long-to-int v1, v3

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 761
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 756
    :cond_0
    div-long v1, p0, v11

    add-long/2addr v1, v9

    goto :goto_0

    .line 758
    :cond_1
    div-long v1, p0, v5

    add-long/2addr v1, v9

    goto :goto_1

    .line 759
    :cond_2
    rem-long v1, p0, v5

    add-long v3, v1, v9

    goto :goto_2
.end method

.method private static getStringMIN1(J)Ljava/lang/String;
    .locals 7
    .parameter "min1"

    .prologue
    .line 778
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 781
    .local v2, strMIN1:Ljava/lang/StringBuilder;
    const-wide/16 v3, 0x0

    cmp-long v3, p0, v3

    if-nez v3, :cond_0

    .line 782
    const-wide/16 v0, 0x0

    .local v0, i:J
    :goto_0
    const-wide/16 v3, 0x7

    cmp-long v3, v0, v3

    if-gez v3, :cond_1

    .line 783
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 782
    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    goto :goto_0

    .line 788
    .end local v0           #i:J
    :cond_0
    const/16 v3, 0xe

    shr-long v0, p0, v3

    .line 789
    .restart local v0       #i:J
    const-wide/16 v3, 0x3e8

    rem-long/2addr v0, v3

    .line 790
    const-wide/16 v3, 0x64

    div-long v3, v0, v3

    const-wide/16 v5, 0x9

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    const-wide/16 v3, 0x30

    :goto_1
    long-to-int v3, v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 791
    const-wide/16 v3, 0x64

    rem-long/2addr v0, v3

    .line 792
    const-wide/16 v3, 0xa

    div-long v3, v0, v3

    const-wide/16 v5, 0x9

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    const-wide/16 v3, 0x30

    :goto_2
    long-to-int v3, v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 793
    const-wide/16 v3, 0xa

    rem-long v3, v0, v3

    const-wide/16 v5, 0x9

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    const-wide/16 v3, 0x30

    :goto_3
    long-to-int v3, v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 795
    const-wide/16 v3, 0x3fff

    and-long/2addr p0, v3

    .line 797
    const/16 v3, 0xa

    shr-long v3, p0, v3

    const-wide/16 v5, 0xf

    and-long v0, v3, v5

    .line 798
    const-wide/16 v3, 0xa

    cmp-long v3, v0, v3

    if-nez v3, :cond_5

    const-wide/16 v3, 0x30

    :goto_4
    long-to-int v3, v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 800
    const-wide/16 v3, 0x3ff

    and-long v0, p0, v3

    .line 801
    const-wide/16 v3, 0x3e8

    rem-long/2addr v0, v3

    .line 802
    const-wide/16 v3, 0x64

    div-long v3, v0, v3

    const-wide/16 v5, 0x9

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    const-wide/16 v3, 0x30

    :goto_5
    long-to-int v3, v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 803
    const-wide/16 v3, 0x64

    rem-long/2addr v0, v3

    .line 807
    const-wide/16 v3, 0xa

    div-long v3, v0, v3

    const-wide/16 v5, 0x9

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    const-wide/16 v3, 0x30

    :goto_6
    long-to-int v3, v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 808
    const-wide/16 v3, 0xa

    rem-long v3, v0, v3

    const-wide/16 v5, 0x9

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    const-wide/16 v3, 0x30

    :goto_7
    long-to-int v3, v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 811
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 790
    :cond_2
    const-wide/16 v3, 0x64

    div-long v3, v0, v3

    const-wide/16 v5, 0x31

    add-long/2addr v3, v5

    goto/16 :goto_1

    .line 792
    :cond_3
    const-wide/16 v3, 0xa

    div-long v3, v0, v3

    const-wide/16 v5, 0x31

    add-long/2addr v3, v5

    goto :goto_2

    .line 793
    :cond_4
    const-wide/16 v3, 0xa

    rem-long v3, v0, v3

    const-wide/16 v5, 0x31

    add-long/2addr v3, v5

    goto :goto_3

    .line 798
    :cond_5
    const-wide/16 v3, 0x30

    add-long/2addr v3, v0

    goto :goto_4

    .line 802
    :cond_6
    const-wide/16 v3, 0x64

    div-long v3, v0, v3

    const-wide/16 v5, 0x31

    add-long/2addr v3, v5

    goto :goto_5

    .line 807
    :cond_7
    const-wide/16 v3, 0xa

    div-long v3, v0, v3

    const-wide/16 v5, 0x31

    add-long/2addr v3, v5

    goto :goto_6

    .line 808
    :cond_8
    const-wide/16 v3, 0xa

    rem-long v3, v0, v3

    const-wide/16 v5, 0x31

    add-long/2addr v3, v5

    goto :goto_7
.end method

.method private static getStringMIN2(J)Ljava/lang/String;
    .locals 13
    .parameter "min2"

    .prologue
    const-wide/16 v11, 0x64

    const-wide/16 v9, 0x31

    const-wide/16 v3, 0x30

    const-wide/16 v7, 0x9

    const-wide/16 v5, 0xa

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 819
    .local v0, strMIN2:Ljava/lang/StringBuilder;
    const-wide/16 v1, 0x3e8

    rem-long/2addr p0, v1

    .line 820
    div-long v1, p0, v11

    cmp-long v1, v1, v7

    if-nez v1, :cond_0

    move-wide v1, v3

    :goto_0
    long-to-int v1, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 821
    rem-long/2addr p0, v11

    .line 822
    div-long v1, p0, v5

    cmp-long v1, v1, v7

    if-nez v1, :cond_1

    move-wide v1, v3

    :goto_1
    long-to-int v1, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 823
    rem-long v1, p0, v5

    cmp-long v1, v1, v7

    if-nez v1, :cond_2

    :goto_2
    long-to-int v1, v3

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 825
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 820
    :cond_0
    div-long v1, p0, v11

    add-long/2addr v1, v9

    goto :goto_0

    .line 822
    :cond_1
    div-long v1, p0, v5

    add-long/2addr v1, v9

    goto :goto_1

    .line 823
    :cond_2
    rem-long v1, p0, v5

    add-long v3, v1, v9

    goto :goto_2
.end method

.method private static getStringMNC(J)Ljava/lang/String;
    .locals 11
    .parameter "mnc"

    .prologue
    const-wide/16 v9, 0x31

    const-wide/16 v3, 0x30

    const-wide/16 v7, 0x9

    const-wide/16 v5, 0xa

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 768
    .local v0, strMNC:Ljava/lang/StringBuilder;
    const-wide/16 v1, 0x64

    rem-long/2addr p0, v1

    .line 770
    div-long v1, p0, v5

    cmp-long v1, v1, v7

    if-nez v1, :cond_0

    move-wide v1, v3

    :goto_0
    long-to-int v1, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 771
    rem-long v1, p0, v5

    cmp-long v1, v1, v7

    if-nez v1, :cond_1

    :goto_1
    long-to-int v1, v3

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 773
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 770
    :cond_0
    div-long v1, p0, v5

    add-long/2addr v1, v9

    goto :goto_0

    .line 771
    :cond_1
    rem-long v1, p0, v5

    add-long v3, v1, v9

    goto :goto_1
.end method

.method public static gsmBcdByteToInt(B)I
    .locals 3
    .parameter "b"

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 189
    .local v0, ret:I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    .line 190
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v0, v1, 0xf

    .line 193
    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    .line 194
    and-int/lit8 v1, p0, 0xf

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 197
    :cond_1
    return v0
.end method

.method static hexCharToInt(C)I
    .locals 3
    .parameter "c"

    .prologue
    .line 350
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    .line 352
    :goto_0
    return v0

    .line 351
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 352
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 354
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 6
    .parameter "s"

    .prologue
    .line 371
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 382
    :cond_0
    return-object v1

    .line 373
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 375
    .local v2, sz:I
    div-int/lit8 v3, v2, 0x2

    new-array v1, v3, [B

    .line 377
    .local v1, ret:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 378
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 377
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private static mapTo2OrderBitColor([BII[II)[I
    .locals 11
    .parameter "data"
    .parameter "valueIndex"
    .parameter "length"
    .parameter "colorArray"
    .parameter "bits"

    .prologue
    const/16 v10, 0x8

    .line 569
    rem-int v9, v10, p4

    if-eqz v9, :cond_0

    .line 570
    const-string v9, "IccUtils"

    const-string/jumbo v10, "not event number of color"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v2

    .line 602
    :goto_0
    return-object v2

    .line 575
    :cond_0
    const/4 v0, 0x1

    .line 576
    .local v0, mask:I
    packed-switch p4, :pswitch_data_0

    .line 591
    :goto_1
    :pswitch_0
    new-array v2, p2, [I

    .line 592
    .local v2, resultArray:[I
    const/4 v3, 0x0

    .line 593
    .local v3, resultIndex:I
    div-int v5, v10, p4

    .local v5, run:I
    move v8, p1

    .line 594
    .end local p1
    .local v8, valueIndex:I
    :goto_2
    if-ge v3, p2, :cond_2

    .line 595
    add-int/lit8 p1, v8, 0x1

    .end local v8           #valueIndex:I
    .restart local p1
    aget-byte v7, p0, v8

    .line 596
    .local v7, tempByte:B
    const/4 v6, 0x0

    .local v6, runIndex:I
    move v4, v3

    .end local v3           #resultIndex:I
    .local v4, resultIndex:I
    :goto_3
    if-ge v6, v5, :cond_1

    .line 597
    sub-int v9, v5, v6

    add-int/lit8 v1, v9, -0x1

    .line 598
    .local v1, offset:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #resultIndex:I
    .restart local v3       #resultIndex:I
    mul-int v9, v1, p4

    shr-int v9, v7, v9

    and-int/2addr v9, v0

    aget v9, p3, v9

    aput v9, v2, v4

    .line 596
    add-int/lit8 v6, v6, 0x1

    move v4, v3

    .end local v3           #resultIndex:I
    .restart local v4       #resultIndex:I
    goto :goto_3

    .line 578
    .end local v1           #offset:I
    .end local v2           #resultArray:[I
    .end local v4           #resultIndex:I
    .end local v5           #run:I
    .end local v6           #runIndex:I
    .end local v7           #tempByte:B
    :pswitch_1
    const/4 v0, 0x1

    .line 579
    goto :goto_1

    .line 581
    :pswitch_2
    const/4 v0, 0x3

    .line 582
    goto :goto_1

    .line 584
    :pswitch_3
    const/16 v0, 0xf

    .line 585
    goto :goto_1

    .line 587
    :pswitch_4
    const/16 v0, 0xff

    goto :goto_1

    .restart local v2       #resultArray:[I
    .restart local v4       #resultIndex:I
    .restart local v5       #run:I
    .restart local v6       #runIndex:I
    .restart local v7       #tempByte:B
    :cond_1
    move v3, v4

    .end local v4           #resultIndex:I
    .restart local v3       #resultIndex:I
    move v8, p1

    .line 601
    .end local p1
    .restart local v8       #valueIndex:I
    goto :goto_2

    .end local v6           #runIndex:I
    .end local v7           #tempByte:B
    :cond_2
    move p1, v8

    .line 602
    .end local v8           #valueIndex:I
    .restart local p1
    goto :goto_0

    .line 576
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static mapToNon2OrderBitColor([BII[II)[I
    .locals 3
    .parameter "data"
    .parameter "valueIndex"
    .parameter "length"
    .parameter "colorArray"
    .parameter "bits"

    .prologue
    .line 607
    const/16 v1, 0x8

    rem-int/2addr v1, p4

    if-nez v1, :cond_0

    .line 608
    const-string v1, "IccUtils"

    const-string/jumbo v2, "not odd number of color"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v0

    .line 615
    :goto_0
    return-object v0

    .line 613
    :cond_0
    new-array v0, p2, [I

    .line 615
    .local v0, resultArray:[I
    goto :goto_0
.end method

.method public static networkNameToString([BII)Ljava/lang/String;
    .locals 7
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 449
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    if-ge p2, v4, :cond_2

    .line 450
    :cond_0
    const-string v2, ""

    .line 487
    :cond_1
    :goto_0
    return-object v2

    .line 453
    :cond_2
    aget-byte v4, p0, p1

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x7

    packed-switch v4, :pswitch_data_0

    .line 474
    const-string v2, ""

    .line 482
    .local v2, ret:Ljava/lang/String;
    :goto_1
    aget-byte v4, p0, p1

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_1

    goto :goto_0

    .line 457
    .end local v2           #ret:Ljava/lang/String;
    :pswitch_0
    aget-byte v4, p0, p1

    and-int/lit8 v3, v4, 0x7

    .line 458
    .local v3, unusedBits:I
    add-int/lit8 v4, p2, -0x1

    mul-int/lit8 v4, v4, 0x8

    sub-int/2addr v4, v3

    div-int/lit8 v0, v4, 0x7

    .line 459
    .local v0, countSeptets:I
    add-int/lit8 v4, p1, 0x1

    invoke-static {p0, v4, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 460
    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_1

    .line 464
    .end local v0           #countSeptets:I
    .end local v2           #ret:Ljava/lang/String;
    .end local v3           #unusedBits:I
    :pswitch_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v5, p2, -0x1

    const-string/jumbo v6, "utf-16"

    invoke-direct {v2, p0, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_1

    .line 466
    .end local v2           #ret:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 467
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    const-string v2, ""

    .line 468
    .restart local v2       #ret:Ljava/lang/String;
    const-string v4, "IccUtils"

    const-string v5, "implausible UnsupportedEncodingException"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 453
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parseToBnW([BI)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "data"
    .parameter "length"

    .prologue
    .line 497
    const/4 v8, 0x0

    .line 498
    .local v8, valueIndex:I
    add-int/lit8 v9, v8, 0x1

    .end local v8           #valueIndex:I
    .local v9, valueIndex:I
    aget-byte v11, p0, v8

    and-int/lit16 v10, v11, 0xff

    .line 499
    .local v10, width:I
    add-int/lit8 v8, v9, 0x1

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    aget-byte v11, p0, v9

    and-int/lit16 v3, v11, 0xff

    .line 500
    .local v3, height:I
    mul-int v4, v10, v3

    .line 502
    .local v4, numOfPixels:I
    new-array v7, v4, [I

    .line 504
    .local v7, pixels:[I
    const/4 v5, 0x0

    .line 505
    .local v5, pixelIndex:I
    const/4 v0, 0x7

    .line 506
    .local v0, bitIndex:I
    const/4 v2, 0x0

    .local v2, currentByte:B
    move v6, v5

    .end local v5           #pixelIndex:I
    .local v6, pixelIndex:I
    move v9, v8

    .line 507
    .end local v8           #valueIndex:I
    .restart local v9       #valueIndex:I
    :goto_0
    if-ge v6, v4, :cond_0

    .line 509
    rem-int/lit8 v11, v6, 0x8

    if-nez v11, :cond_2

    .line 510
    add-int/lit8 v8, v9, 0x1

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    aget-byte v2, p0, v9

    .line 511
    const/4 v0, 0x7

    .line 513
    :goto_1
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pixelIndex:I
    .restart local v5       #pixelIndex:I
    add-int/lit8 v1, v0, -0x1

    .end local v0           #bitIndex:I
    .local v1, bitIndex:I
    shr-int v11, v2, v0

    and-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bitToRGB(I)I

    move-result v11

    aput v11, v7, v6

    move v0, v1

    .end local v1           #bitIndex:I
    .restart local v0       #bitIndex:I
    move v6, v5

    .end local v5           #pixelIndex:I
    .restart local v6       #pixelIndex:I
    move v9, v8

    .end local v8           #valueIndex:I
    .restart local v9       #valueIndex:I
    goto :goto_0

    .line 516
    :cond_0
    if-eq v6, v4, :cond_1

    .line 517
    const-string v11, "IccUtils"

    const-string/jumbo v12, "parse end and size error"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_1
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v10, v3, v11}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    return-object v11

    :cond_2
    move v8, v9

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    goto :goto_1
.end method

.method public static parseToRGB([BIZ)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "data"
    .parameter "length"
    .parameter "transparency"

    .prologue
    .line 540
    const/4 v6, 0x0

    .line 541
    .local v6, valueIndex:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .local v7, valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v8, v9, 0xff

    .line 542
    .local v8, width:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v9, p0, v7

    and-int/lit16 v4, v9, 0xff

    .line 543
    .local v4, height:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v0, v9, 0xff

    .line 544
    .local v0, bits:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v9, p0, v7

    and-int/lit16 v3, v9, 0xff

    .line 545
    .local v3, colorNumber:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v10, p0, v7

    and-int/lit16 v10, v10, 0xff

    or-int v1, v9, v10

    .line 547
    .local v1, clutOffset:I
    add-int/lit8 p1, p1, -0x6

    .line 549
    invoke-static {p0, v1, v3}, Lcom/android/internal/telephony/IccUtils;->getCLUT([BII)[I

    move-result-object v2

    .line 550
    .local v2, colorIndexArray:[I
    const/4 v9, 0x1

    if-ne v9, p2, :cond_0

    .line 551
    add-int/lit8 v9, v3, -0x1

    const/4 v10, 0x0

    aput v10, v2, v9

    .line 554
    :cond_0
    const/4 v5, 0x0

    .line 555
    .local v5, resultArray:[I
    const/16 v9, 0x8

    rem-int/2addr v9, v0

    if-nez v9, :cond_1

    .line 556
    mul-int v9, v8, v4

    invoke-static {p0, v6, v9, v2, v0}, Lcom/android/internal/telephony/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v5

    .line 563
    :goto_0
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v8, v4, v9}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    return-object v9

    .line 559
    :cond_1
    mul-int v9, v8, v4

    invoke-static {p0, v6, v9, v2, v0}, Lcom/android/internal/telephony/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v5

    goto :goto_0
.end method

.method public static stringToBytes(Ljava/lang/String;)[B
    .locals 4
    .parameter "data"

    .prologue
    .line 916
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 917
    .local v0, dataLength:I
    new-array v2, v0, [B

    .line 919
    .local v2, ret:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 920
    :cond_0
    return-object v2
.end method

.method public static unicode2String([BII)Ljava/lang/String;
    .locals 8
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 865
    const-string v4, "IccUtils"

    const-string v5, "Enter unicode2String"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 867
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 868
    .local v2, len:I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 869
    aget-byte v4, p0, p1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 870
    const-wide/16 v0, 0x0

    .line 871
    .local v0, ch:J
    aget-byte v4, p0, p1

    shl-int/lit8 v4, v4, 0x8

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->unsigned32(I)J

    move-result-wide v4

    add-int/lit8 v6, p1, 0x1

    aget-byte v6, p0, v6

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->unsigned32(B)J

    move-result-wide v6

    or-long v0, v4, v6

    .line 872
    long-to-int v4, v0

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 873
    add-int/lit8 p1, p1, 0x2

    .line 874
    add-int/lit8 v2, v2, 0x2

    .line 875
    goto :goto_0

    .line 879
    .end local v0           #ch:J
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static unsigned32(B)J
    .locals 4
    .parameter "n"

    .prologue
    .line 708
    int-to-long v0, p0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static unsigned32(I)J
    .locals 4
    .parameter "n"

    .prologue
    .line 706
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static unsigned32(S)J
    .locals 4
    .parameter "n"

    .prologue
    .line 707
    int-to-long v0, p0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    return-wide v0
.end method
