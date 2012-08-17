.class public final Lcom/android/server/pm/ChangeKeys;
.super Ljava/lang/Object;
.source "ChangeKeys.java"


# static fields
.field private static FLAG_FILE:Ljava/lang/String; = null

.field private static PUBLIC_KEYS_FILE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ChangeKeys"

.field private static TRIGGER_FILE:Ljava/lang/String;

.field private static sNewKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sOldKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/ChangeKeys;->sOldKeys:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/ChangeKeys;->sNewKeys:Ljava/util/ArrayList;

    .line 24
    const-string v0, "/system/etc/need_to_change_keys"

    sput-object v0, Lcom/android/server/pm/ChangeKeys;->TRIGGER_FILE:Ljava/lang/String;

    .line 25
    const-string v0, "/system/etc/public.keys"

    sput-object v0, Lcom/android/server/pm/ChangeKeys;->PUBLIC_KEYS_FILE:Ljava/lang/String;

    .line 26
    const-string v0, "/data/system/changed_flag"

    sput-object v0, Lcom/android/server/pm/ChangeKeys;->FLAG_FILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deleteFile(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"

    .prologue
    .line 79
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    const-string v1, "ChangeKeys"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fail!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 85
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static deletePackage(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "sb"
    .parameter "startStr"
    .parameter "endStr"

    .prologue
    const/4 v9, 0x1

    const/4 v11, -0x1

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 30
    .local v8, startIdx:I
    if-eq v8, v11, :cond_1

    .line 31
    invoke-virtual {p0, p2, v8}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 32
    .local v4, endIdx:I
    const-string v10, "key="

    invoke-virtual {p0, v10, v8}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 34
    .local v5, key:I
    if-eq v5, v11, :cond_3

    if-ge v5, v4, :cond_3

    .line 36
    const-string v10, "<cert index="

    invoke-virtual {p0, v10, v8}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 37
    .local v2, certStart:I
    if-eq v2, v11, :cond_2

    .line 38
    const-string v10, "\" />"

    invoke-virtual {p0, v10, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 40
    .local v1, certEnd:I
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {p0, v2, v10}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, cert:Ljava/lang/String;
    const-string v10, "\" />"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p0, v2, v10}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, certkey:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v4

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p0, v8, v10}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 46
    .local v7, newCertIdx:I
    if-eq v7, v11, :cond_0

    .line 47
    const-string v10, "\" />"

    invoke-virtual {p0, v10, v7}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 48
    .local v6, newCertEndIdx:I
    const-string v10, "\" />"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v6

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p0, v7, v10, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    .end local v0           #cert:Ljava/lang/String;
    .end local v1           #certEnd:I
    .end local v2           #certStart:I
    .end local v3           #certkey:Ljava/lang/String;
    .end local v4           #endIdx:I
    .end local v5           #key:I
    .end local v6           #newCertEndIdx:I
    .end local v7           #newCertIdx:I
    :goto_0
    return v9

    .line 52
    .restart local v0       #cert:Ljava/lang/String;
    .restart local v1       #certEnd:I
    .restart local v2       #certStart:I
    .restart local v3       #certkey:Ljava/lang/String;
    .restart local v4       #endIdx:I
    .restart local v5       #key:I
    .restart local v7       #newCertIdx:I
    :cond_0
    const-string v9, "ChangeKeys"

    const-string v10, "Can\'t find new cert element. Error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .end local v0           #cert:Ljava/lang/String;
    .end local v1           #certEnd:I
    .end local v2           #certStart:I
    .end local v3           #certkey:Ljava/lang/String;
    .end local v4           #endIdx:I
    .end local v5           #key:I
    .end local v7           #newCertIdx:I
    :cond_1
    :goto_1
    const/4 v9, 0x0

    goto :goto_0

    .line 54
    .restart local v2       #certStart:I
    .restart local v4       #endIdx:I
    .restart local v5       #key:I
    :cond_2
    const-string v9, "ChangeKeys"

    const-string v10, "Can\'t find cert element. Error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 58
    .end local v2           #certStart:I
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v4

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p0, v8, v10}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private static deletePermission(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 2
    .parameter "sb"
    .parameter "str"

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 70
    .local v0, startIdx:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 76
    :cond_0
    return-void
.end method

.method public static process()Z
    .locals 32

    .prologue
    .line 93
    new-instance v28, Ljava/io/File;

    sget-object v29, Lcom/android/server/pm/ChangeKeys;->TRIGGER_FILE:Ljava/lang/String;

    invoke-direct/range {v28 .. v29}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v28, triggerFile:Ljava/io/File;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v29

    if-nez v29, :cond_1

    .line 95
    const-string v29, "ChangeKeys"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "ChangeKeys : no "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget-object v31, Lcom/android/server/pm/ChangeKeys;->TRIGGER_FILE:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ": ignore to run changekeys."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/16 v29, 0x0

    .line 276
    :cond_0
    :goto_0
    return v29

    .line 99
    :cond_1
    new-instance v10, Ljava/io/File;

    sget-object v29, Lcom/android/server/pm/ChangeKeys;->FLAG_FILE:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v10, flagFile:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v29

    if-eqz v29, :cond_2

    .line 103
    const-string v29, "ChangeKeys"

    const-string v30, "Already did ChangeKeys before."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/16 v29, 0x0

    goto :goto_0

    .line 109
    :cond_2
    :try_start_0
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 118
    const-string v3, "packages.xml"

    .line 119
    .local v3, PACKAGES_XML_FILE_NAME:Ljava/lang/String;
    const-string v5, "/data/system/"

    .line 120
    .local v5, basePath:Ljava/lang/String;
    const/4 v7, 0x0

    .line 121
    .local v7, changed:Z
    new-instance v23, Ljava/io/File;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v23, packagesXmlFile:Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v29

    if-nez v29, :cond_3

    .line 124
    const-string v5, "/dbdata/system/"

    .line 125
    new-instance v23, Ljava/io/File;

    .end local v23           #packagesXmlFile:Ljava/io/File;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .restart local v23       #packagesXmlFile:Ljava/io/File;
    :cond_3
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v29

    if-nez v29, :cond_4

    .line 129
    const-string v29, "ChangeKeys"

    const-string v30, "ChangeKeys : there is no packages.xml."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/16 v29, 0x0

    goto :goto_0

    .line 110
    .end local v3           #PACKAGES_XML_FILE_NAME:Ljava/lang/String;
    .end local v5           #basePath:Ljava/lang/String;
    .end local v7           #changed:Z
    .end local v23           #packagesXmlFile:Ljava/io/File;
    :catch_0
    move-exception v8

    .line 111
    .local v8, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 112
    const/16 v29, 0x0

    goto :goto_0

    .line 113
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v8

    .line 114
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 115
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 137
    .end local v8           #e:Ljava/io/IOException;
    .restart local v3       #PACKAGES_XML_FILE_NAME:Ljava/lang/String;
    .restart local v5       #basePath:Ljava/lang/String;
    .restart local v7       #changed:Z
    .restart local v23       #packagesXmlFile:Ljava/io/File;
    :cond_4
    new-instance v15, Ljava/io/File;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ".journal"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v15, journalFile:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ".bak"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .local v4, backupFile:Ljava/io/File;
    move-object/from16 v0, v23

    invoke-static {v0, v4}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v29

    if-nez v29, :cond_5

    .line 140
    const-string v29, "ChangeKeys"

    const-string v30, "ChangeKeys : error on backup packages.xml to packages.xml.bak."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 142
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 149
    :cond_5
    new-instance v24, Ljava/io/File;

    sget-object v29, Lcom/android/server/pm/ChangeKeys;->PUBLIC_KEYS_FILE:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .local v24, publicKeysFile:Ljava/io/File;
    const/16 v18, 0x0

    .line 152
    .local v18, keyIn:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v19, Ljava/io/BufferedReader;

    new-instance v29, Ljava/io/FileReader;

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 155
    .end local v18           #keyIn:Ljava/io/BufferedReader;
    .local v19, keyIn:Ljava/io/BufferedReader;
    const/16 v17, 0x0

    .line 156
    .local v17, keyIdx:I
    :cond_6
    :goto_1
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .local v16, key:Ljava/lang/String;
    if-eqz v16, :cond_9

    .line 157
    const-string v29, "#"

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_6

    .line 160
    rem-int/lit8 v29, v17, 0x2

    if-nez v29, :cond_7

    .line 161
    sget-object v29, Lcom/android/server/pm/ChangeKeys;->sOldKeys:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 163
    :cond_7
    sget-object v29, Lcom/android/server/pm/ChangeKeys;->sNewKeys:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1a

    goto :goto_2

    .line 167
    .end local v16           #key:Ljava/lang/String;
    :catch_2
    move-exception v9

    move-object/from16 v18, v19

    .line 169
    .end local v17           #keyIdx:I
    .end local v19           #keyIn:Ljava/io/BufferedReader;
    .local v9, e1:Ljava/io/FileNotFoundException;
    .restart local v18       #keyIn:Ljava/io/BufferedReader;
    :goto_3
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 170
    const-string v29, "ChangeKeys"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "ChangeKeys : no "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget-object v31, Lcom/android/server/pm/ChangeKeys;->PUBLIC_KEYS_FILE:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ": ignore to run changekeys."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 171
    const/16 v29, 0x0

    .line 179
    if-eqz v18, :cond_0

    .line 181
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 182
    .end local v9           #e1:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v30

    goto/16 :goto_0

    .line 172
    :catch_4
    move-exception v8

    .line 174
    .restart local v8       #e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 175
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 176
    const/16 v29, 0x0

    .line 179
    if-eqz v18, :cond_0

    .line 181
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 179
    .end local v8           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v29

    :goto_5
    if-eqz v18, :cond_8

    .line 181
    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    .line 179
    :cond_8
    :goto_6
    throw v29

    .end local v18           #keyIn:Ljava/io/BufferedReader;
    .restart local v16       #key:Ljava/lang/String;
    .restart local v17       #keyIdx:I
    .restart local v19       #keyIn:Ljava/io/BufferedReader;
    :cond_9
    if-eqz v19, :cond_a

    .line 181
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    .line 188
    :cond_a
    :goto_7
    sget-object v29, Lcom/android/server/pm/ChangeKeys;->sOldKeys:Ljava/util/ArrayList;

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    sget-object v30, Lcom/android/server/pm/ChangeKeys;->sNewKeys:Ljava/util/ArrayList;

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_b

    .line 189
    const-string v29, "ChangeKeys"

    const-string v30, "ChangeKeys : mismatch count of keys"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 196
    :cond_b
    const/4 v13, 0x0

    .line 197
    .local v13, in:Ljava/io/InputStreamReader;
    const/16 v21, 0x0

    .line 198
    .local v21, out:Ljava/io/FileOutputStream;
    const/16 v26, 0x0

    .line 200
    .local v26, sout:Ljava/io/OutputStreamWriter;
    :try_start_9
    new-instance v14, Ljava/io/InputStreamReader;

    new-instance v29, Ljava/io/FileInputStream;

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v30, "utf-8"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v14, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_18
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_15

    .line 203
    .end local v13           #in:Ljava/io/InputStreamReader;
    .local v14, in:Ljava/io/InputStreamReader;
    const/16 v29, 0x1000

    :try_start_a
    move/from16 v0, v29

    new-array v6, v0, [C

    .line 204
    .local v6, buf:[C
    new-instance v25, Ljava/lang/StringBuffer;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    .line 205
    .local v25, sb:Ljava/lang/StringBuffer;
    :goto_8
    invoke-virtual {v14, v6}, Ljava/io/InputStreamReader;->read([C)I

    move-result v20

    .local v20, nread:I
    const/16 v29, -0x1

    move/from16 v0, v20

    move/from16 v1, v29

    if-eq v0, v1, :cond_10

    .line 206
    const/16 v29, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v29

    move/from16 v2, v20

    invoke-virtual {v0, v6, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_16

    goto :goto_8

    .line 250
    .end local v6           #buf:[C
    .end local v16           #key:Ljava/lang/String;
    .end local v20           #nread:I
    .end local v25           #sb:Ljava/lang/StringBuffer;
    :catch_5
    move-exception v8

    move-object v13, v14

    .line 251
    .end local v14           #in:Ljava/io/InputStreamReader;
    .local v8, e:Ljava/io/FileNotFoundException;
    .restart local v13       #in:Ljava/io/InputStreamReader;
    :goto_9
    :try_start_b
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 252
    const/16 v29, 0x0

    .line 258
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    move-result v30

    if-nez v30, :cond_c

    .line 259
    const-string v30, "ChangeKeys"

    const-string v31, "journalFile delete fail!!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_c
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v30

    if-nez v30, :cond_d

    .line 261
    const-string v30, "ChangeKeys"

    const-string v31, "backupFile delete fail!!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_d
    if-eqz v13, :cond_e

    .line 264
    :try_start_c
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_e

    .line 266
    :cond_e
    :goto_a
    if-eqz v21, :cond_f

    .line 268
    :try_start_d
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_f

    .line 270
    :cond_f
    :goto_b
    if-eqz v26, :cond_0

    .line 272
    :try_start_e
    invoke-virtual/range {v26 .. v26}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_0

    .line 273
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v30

    goto/16 :goto_0

    .line 208
    .end local v13           #in:Ljava/io/InputStreamReader;
    .restart local v6       #buf:[C
    .restart local v14       #in:Ljava/io/InputStreamReader;
    .restart local v16       #key:Ljava/lang/String;
    .restart local v20       #nread:I
    .restart local v25       #sb:Ljava/lang/StringBuffer;
    :cond_10
    :try_start_f
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V

    .line 210
    const/4 v11, 0x0

    .local v11, i:I
    :goto_c
    sget-object v29, Lcom/android/server/pm/ChangeKeys;->sOldKeys:Ljava/util/ArrayList;

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v11, v0, :cond_12

    .line 211
    sget-object v29, Lcom/android/server/pm/ChangeKeys;->sOldKeys:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #key:Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 212
    .restart local v16       #key:Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 213
    .local v12, idx:I
    if-ltz v12, :cond_11

    .line 214
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v29

    add-int v30, v12, v29

    sget-object v29, Lcom/android/server/pm/ChangeKeys;->sNewKeys:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v25

    move/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v12, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    const/4 v7, 0x1

    .line 210
    :cond_11
    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    .line 219
    .end local v12           #idx:I
    :cond_12
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v0, v7, :cond_14

    .line 220
    const-string v29, "<package name=\"com.sec.android.app.samsungapps\""

    const-string v30, "</package>"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/ChangeKeys;->deletePackage(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 221
    const-string v29, "<updated-package name=\"com.sec.android.app.samsungapps\""

    const-string v30, "</updated-package>"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/ChangeKeys;->deletePackage(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 222
    const-string v29, "<package name=\"com.sec.android.app.samsungapps.una\""

    const-string v30, "</package>"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/ChangeKeys;->deletePackage(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 223
    const-string v29, "<updated-package name=\"com.sec.android.app.samsungapps.una\""

    const-string v30, "</updated-package>"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/ChangeKeys;->deletePackage(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 224
    const-string v29, "<item name=\"com.sec.android.provider.una.astore.permission.READ\" package=\"com.sec.android.app.samsungapps.una\" />"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/pm/ChangeKeys;->deletePermission(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 225
    const-string v29, "<item name=\"com.sec.android.provider.una.astore.permission.WRITE\" package=\"com.sec.android.app.samsungapps.una\" />"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/pm/ChangeKeys;->deletePermission(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 226
    const-string v29, "/data/app/com.sec.android.app.samsungapps-1.apk"

    invoke-static/range {v29 .. v29}, Lcom/android/server/pm/ChangeKeys;->deleteFile(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_13

    .line 227
    const-string v29, "/data/app/com.sec.android.app.samsungapps-2.apk"

    invoke-static/range {v29 .. v29}, Lcom/android/server/pm/ChangeKeys;->deleteFile(Ljava/lang/String;)Z

    .line 228
    :cond_13
    const-string v29, "/data/app/com.sec.android.app.samsungapps.una-1.apk"

    invoke-static/range {v29 .. v29}, Lcom/android/server/pm/ChangeKeys;->deleteFile(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_14

    .line 229
    const-string v29, "/data/app/com.sec.android.app.samsungapps.una-2.apk"

    invoke-static/range {v29 .. v29}, Lcom/android/server/pm/ChangeKeys;->deleteFile(Ljava/lang/String;)Z

    .line 232
    :cond_14
    new-instance v22, Ljava/io/FileOutputStream;

    move-object/from16 v0, v22

    invoke-direct {v0, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_16

    .line 233
    .end local v21           #out:Ljava/io/FileOutputStream;
    .local v22, out:Ljava/io/FileOutputStream;
    :try_start_10
    new-instance v27, Ljava/io/OutputStreamWriter;

    const-string v29, "utf-8"

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_19
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_17

    .line 234
    .end local v26           #sout:Ljava/io/OutputStreamWriter;
    .local v27, sout:Ljava/io/OutputStreamWriter;
    :try_start_11
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/io/FileDescriptor;->sync()V

    .line 236
    invoke-virtual/range {v27 .. v27}, Ljava/io/OutputStreamWriter;->close()V

    .line 238
    move-object/from16 v0, v23

    invoke-static {v15, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v29

    if-nez v29, :cond_1a

    .line 239
    const-string v29, "ChangeKeys"

    const-string v30, "ChangeKeys : failed to copy packages.xml.journal to packages.xml."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    move-object/from16 v0, v23

    invoke-static {v4, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 241
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    .line 258
    :goto_d
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    move-result v29

    if-nez v29, :cond_15

    .line 259
    const-string v29, "ChangeKeys"

    const-string v30, "journalFile delete fail!!"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_15
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v29

    if-nez v29, :cond_16

    .line 261
    const-string v29, "ChangeKeys"

    const-string v30, "backupFile delete fail!!"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_16
    if-eqz v14, :cond_17

    .line 264
    :try_start_12
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_12

    .line 266
    :cond_17
    :goto_e
    if-eqz v22, :cond_18

    .line 268
    :try_start_13
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_13

    .line 270
    :cond_18
    :goto_f
    if-eqz v27, :cond_19

    .line 272
    :try_start_14
    invoke-virtual/range {v27 .. v27}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_14

    .line 276
    :cond_19
    :goto_10
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 244
    :cond_1a
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v0, v7, :cond_1b

    .line 245
    :try_start_15
    const-string v29, "ChangeKeys"

    const-string v30, "ChangeKeys : succeed in changing keys."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 250
    :catch_7
    move-exception v8

    move-object/from16 v26, v27

    .end local v27           #sout:Ljava/io/OutputStreamWriter;
    .restart local v26       #sout:Ljava/io/OutputStreamWriter;
    move-object/from16 v21, v22

    .end local v22           #out:Ljava/io/FileOutputStream;
    .restart local v21       #out:Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14           #in:Ljava/io/InputStreamReader;
    .restart local v13       #in:Ljava/io/InputStreamReader;
    goto/16 :goto_9

    .line 247
    .end local v13           #in:Ljava/io/InputStreamReader;
    .end local v21           #out:Ljava/io/FileOutputStream;
    .end local v26           #sout:Ljava/io/OutputStreamWriter;
    .restart local v14       #in:Ljava/io/InputStreamReader;
    .restart local v22       #out:Ljava/io/FileOutputStream;
    .restart local v27       #sout:Ljava/io/OutputStreamWriter;
    :cond_1b
    const-string v29, "ChangeKeys"

    const-string v30, "ChangeKeys: success process, but there is no old keys."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_7
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_8

    goto :goto_d

    .line 253
    :catch_8
    move-exception v8

    move-object/from16 v26, v27

    .end local v27           #sout:Ljava/io/OutputStreamWriter;
    .restart local v26       #sout:Ljava/io/OutputStreamWriter;
    move-object/from16 v21, v22

    .end local v22           #out:Ljava/io/FileOutputStream;
    .restart local v21       #out:Ljava/io/FileOutputStream;
    move-object v13, v14

    .line 254
    .end local v6           #buf:[C
    .end local v11           #i:I
    .end local v14           #in:Ljava/io/InputStreamReader;
    .end local v16           #key:Ljava/lang/String;
    .end local v20           #nread:I
    .end local v25           #sb:Ljava/lang/StringBuffer;
    .local v8, e:Ljava/io/IOException;
    .restart local v13       #in:Ljava/io/InputStreamReader;
    :goto_11
    :try_start_16
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 255
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 256
    const/16 v29, 0x0

    .line 258
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    move-result v30

    if-nez v30, :cond_1c

    .line 259
    const-string v30, "ChangeKeys"

    const-string v31, "journalFile delete fail!!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_1c
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v30

    if-nez v30, :cond_1d

    .line 261
    const-string v30, "ChangeKeys"

    const-string v31, "backupFile delete fail!!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_1d
    if-eqz v13, :cond_1e

    .line 264
    :try_start_17
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_10

    .line 266
    :cond_1e
    :goto_12
    if-eqz v21, :cond_1f

    .line 268
    :try_start_18
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_11

    .line 270
    :cond_1f
    :goto_13
    if-eqz v26, :cond_0

    .line 272
    :try_start_19
    invoke-virtual/range {v26 .. v26}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_6

    goto/16 :goto_0

    .line 258
    .end local v8           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v29

    :goto_14
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    move-result v30

    if-nez v30, :cond_20

    .line 259
    const-string v30, "ChangeKeys"

    const-string v31, "journalFile delete fail!!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_20
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v30

    if-nez v30, :cond_21

    .line 261
    const-string v30, "ChangeKeys"

    const-string v31, "backupFile delete fail!!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_21
    if-eqz v13, :cond_22

    .line 264
    :try_start_1a
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_b

    .line 266
    :cond_22
    :goto_15
    if-eqz v21, :cond_23

    .line 268
    :try_start_1b
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_c

    .line 270
    :cond_23
    :goto_16
    if-eqz v26, :cond_24

    .line 272
    :try_start_1c
    invoke-virtual/range {v26 .. v26}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_d

    .line 258
    :cond_24
    :goto_17
    throw v29

    .line 182
    .end local v13           #in:Ljava/io/InputStreamReader;
    .end local v17           #keyIdx:I
    .end local v19           #keyIn:Ljava/io/BufferedReader;
    .end local v21           #out:Ljava/io/FileOutputStream;
    .end local v26           #sout:Ljava/io/OutputStreamWriter;
    .restart local v18       #keyIn:Ljava/io/BufferedReader;
    :catch_9
    move-exception v30

    goto/16 :goto_6

    .end local v18           #keyIn:Ljava/io/BufferedReader;
    .restart local v16       #key:Ljava/lang/String;
    .restart local v17       #keyIdx:I
    .restart local v19       #keyIn:Ljava/io/BufferedReader;
    :catch_a
    move-exception v29

    goto/16 :goto_7

    .line 265
    .end local v16           #key:Ljava/lang/String;
    .restart local v13       #in:Ljava/io/InputStreamReader;
    .restart local v21       #out:Ljava/io/FileOutputStream;
    .restart local v26       #sout:Ljava/io/OutputStreamWriter;
    :catch_b
    move-exception v30

    goto :goto_15

    .line 269
    :catch_c
    move-exception v30

    goto :goto_16

    .line 273
    :catch_d
    move-exception v30

    goto :goto_17

    .line 265
    .local v8, e:Ljava/io/FileNotFoundException;
    :catch_e
    move-exception v30

    goto/16 :goto_a

    .line 269
    :catch_f
    move-exception v30

    goto/16 :goto_b

    .line 265
    .local v8, e:Ljava/io/IOException;
    :catch_10
    move-exception v30

    goto :goto_12

    .line 269
    :catch_11
    move-exception v30

    goto :goto_13

    .line 265
    .end local v8           #e:Ljava/io/IOException;
    .end local v13           #in:Ljava/io/InputStreamReader;
    .end local v21           #out:Ljava/io/FileOutputStream;
    .end local v26           #sout:Ljava/io/OutputStreamWriter;
    .restart local v6       #buf:[C
    .restart local v11       #i:I
    .restart local v14       #in:Ljava/io/InputStreamReader;
    .restart local v16       #key:Ljava/lang/String;
    .restart local v20       #nread:I
    .restart local v22       #out:Ljava/io/FileOutputStream;
    .restart local v25       #sb:Ljava/lang/StringBuffer;
    .restart local v27       #sout:Ljava/io/OutputStreamWriter;
    :catch_12
    move-exception v29

    goto/16 :goto_e

    .line 269
    :catch_13
    move-exception v29

    goto/16 :goto_f

    .line 273
    :catch_14
    move-exception v29

    goto/16 :goto_10

    .line 258
    .end local v6           #buf:[C
    .end local v11           #i:I
    .end local v16           #key:Ljava/lang/String;
    .end local v20           #nread:I
    .end local v22           #out:Ljava/io/FileOutputStream;
    .end local v25           #sb:Ljava/lang/StringBuffer;
    .end local v27           #sout:Ljava/io/OutputStreamWriter;
    .restart local v21       #out:Ljava/io/FileOutputStream;
    .restart local v26       #sout:Ljava/io/OutputStreamWriter;
    :catchall_2
    move-exception v29

    move-object v13, v14

    .end local v14           #in:Ljava/io/InputStreamReader;
    .restart local v13       #in:Ljava/io/InputStreamReader;
    goto :goto_14

    .end local v13           #in:Ljava/io/InputStreamReader;
    .end local v21           #out:Ljava/io/FileOutputStream;
    .restart local v6       #buf:[C
    .restart local v11       #i:I
    .restart local v14       #in:Ljava/io/InputStreamReader;
    .restart local v16       #key:Ljava/lang/String;
    .restart local v20       #nread:I
    .restart local v22       #out:Ljava/io/FileOutputStream;
    .restart local v25       #sb:Ljava/lang/StringBuffer;
    :catchall_3
    move-exception v29

    move-object/from16 v21, v22

    .end local v22           #out:Ljava/io/FileOutputStream;
    .restart local v21       #out:Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14           #in:Ljava/io/InputStreamReader;
    .restart local v13       #in:Ljava/io/InputStreamReader;
    goto :goto_14

    .end local v13           #in:Ljava/io/InputStreamReader;
    .end local v21           #out:Ljava/io/FileOutputStream;
    .end local v26           #sout:Ljava/io/OutputStreamWriter;
    .restart local v14       #in:Ljava/io/InputStreamReader;
    .restart local v22       #out:Ljava/io/FileOutputStream;
    .restart local v27       #sout:Ljava/io/OutputStreamWriter;
    :catchall_4
    move-exception v29

    move-object/from16 v26, v27

    .end local v27           #sout:Ljava/io/OutputStreamWriter;
    .restart local v26       #sout:Ljava/io/OutputStreamWriter;
    move-object/from16 v21, v22

    .end local v22           #out:Ljava/io/FileOutputStream;
    .restart local v21       #out:Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14           #in:Ljava/io/InputStreamReader;
    .restart local v13       #in:Ljava/io/InputStreamReader;
    goto :goto_14

    .line 253
    .end local v6           #buf:[C
    .end local v11           #i:I
    .end local v20           #nread:I
    .end local v25           #sb:Ljava/lang/StringBuffer;
    :catch_15
    move-exception v8

    goto/16 :goto_11

    .end local v13           #in:Ljava/io/InputStreamReader;
    .end local v16           #key:Ljava/lang/String;
    .restart local v14       #in:Ljava/io/InputStreamReader;
    :catch_16
    move-exception v8

    move-object v13, v14

    .end local v14           #in:Ljava/io/InputStreamReader;
    .restart local v13       #in:Ljava/io/InputStreamReader;
    goto/16 :goto_11

    .end local v13           #in:Ljava/io/InputStreamReader;
    .end local v21           #out:Ljava/io/FileOutputStream;
    .restart local v6       #buf:[C
    .restart local v11       #i:I
    .restart local v14       #in:Ljava/io/InputStreamReader;
    .restart local v16       #key:Ljava/lang/String;
    .restart local v20       #nread:I
    .restart local v22       #out:Ljava/io/FileOutputStream;
    .restart local v25       #sb:Ljava/lang/StringBuffer;
    :catch_17
    move-exception v8

    move-object/from16 v21, v22

    .end local v22           #out:Ljava/io/FileOutputStream;
    .restart local v21       #out:Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14           #in:Ljava/io/InputStreamReader;
    .restart local v13       #in:Ljava/io/InputStreamReader;
    goto/16 :goto_11

    .line 250
    .end local v6           #buf:[C
    .end local v11           #i:I
    .end local v20           #nread:I
    .end local v25           #sb:Ljava/lang/StringBuffer;
    :catch_18
    move-exception v8

    goto/16 :goto_9

    .end local v13           #in:Ljava/io/InputStreamReader;
    .end local v21           #out:Ljava/io/FileOutputStream;
    .restart local v6       #buf:[C
    .restart local v11       #i:I
    .restart local v14       #in:Ljava/io/InputStreamReader;
    .restart local v20       #nread:I
    .restart local v22       #out:Ljava/io/FileOutputStream;
    .restart local v25       #sb:Ljava/lang/StringBuffer;
    :catch_19
    move-exception v8

    move-object/from16 v21, v22

    .end local v22           #out:Ljava/io/FileOutputStream;
    .restart local v21       #out:Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14           #in:Ljava/io/InputStreamReader;
    .restart local v13       #in:Ljava/io/InputStreamReader;
    goto/16 :goto_9

    .line 179
    .end local v6           #buf:[C
    .end local v11           #i:I
    .end local v13           #in:Ljava/io/InputStreamReader;
    .end local v16           #key:Ljava/lang/String;
    .end local v20           #nread:I
    .end local v21           #out:Ljava/io/FileOutputStream;
    .end local v25           #sb:Ljava/lang/StringBuffer;
    .end local v26           #sout:Ljava/io/OutputStreamWriter;
    :catchall_5
    move-exception v29

    move-object/from16 v18, v19

    .end local v19           #keyIn:Ljava/io/BufferedReader;
    .restart local v18       #keyIn:Ljava/io/BufferedReader;
    goto/16 :goto_5

    .line 172
    .end local v18           #keyIn:Ljava/io/BufferedReader;
    .restart local v19       #keyIn:Ljava/io/BufferedReader;
    :catch_1a
    move-exception v8

    move-object/from16 v18, v19

    .end local v19           #keyIn:Ljava/io/BufferedReader;
    .restart local v18       #keyIn:Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 167
    .end local v17           #keyIdx:I
    :catch_1b
    move-exception v9

    goto/16 :goto_3
.end method
