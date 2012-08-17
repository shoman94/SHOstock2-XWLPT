.class public Lcom/android/settings/accounts/ChooseAccountActivity;
.super Landroid/preference/PreferenceActivity;
.source "ChooseAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;
    }
.end annotation


# instance fields
.field private mAccountTypeToAuthorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mAccountTypesFilter:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAddAccountGroup:Landroid/preference/PreferenceGroup;

.field private mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

.field private mAuthorities:[Ljava/lang/String;

.field private mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mCancel:Landroid/widget/Button;

.field private mEtc:Landroid/preference/PreferenceCategory;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private final mProviderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSocialHub:Landroid/preference/PreferenceCategory;

.field private mSynchronize:Landroid/preference/PreferenceCategory;

.field private mTypeToAuthDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    .line 87
    new-instance v0, Lcom/android/settings/accounts/ChooseAccountActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/ChooseAccountActivity$1;-><init>(Lcom/android/settings/accounts/ChooseAccountActivity;)V

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mCallback:Landroid/accounts/AccountManagerCallback;

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accounts/ChooseAccountActivity;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accounts/ChooseAccountActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addAccount(Ljava/lang/String;)V
    .locals 8
    .parameter "accountType"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 442
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 443
    .local v4, addAccountOptions:Landroid/os/Bundle;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mPendingIntent:Landroid/app/PendingIntent;

    .line 444
    const-string v0, "pendingIntent"

    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 445
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mCallback:Landroid/accounts/AccountManagerCallback;

    move-object v1, p1

    move-object v3, v2

    move-object v5, p0

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 453
    return-void
.end method

.method private onAuthDescriptionsUpdated()V
    .locals 32

    .prologue
    .line 192
    const/4 v10, 0x0

    .line 193
    .local v10, anySocialHubAccountType:I
    const/4 v11, 0x0

    .line 194
    .local v11, anySyncronizeAccountType:I
    const/4 v9, 0x0

    .line 197
    .local v9, anyEtcAccountType:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v21

    move/from16 v1, v29

    if-ge v0, v1, :cond_a

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    move-object/from16 v29, v0

    aget-object v29, v29, v21

    move-object/from16 v0, v29

    iget-object v7, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 199
    .local v7, accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings/accounts/ChooseAccountActivity;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v28

    .line 203
    .local v28, providerName:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings/accounts/ChooseAccountActivity;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 204
    .local v6, accountAuths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x1

    .line 205
    .local v8, addAccountPref:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    if-lez v29, :cond_0

    .line 206
    if-eqz v6, :cond_7

    .line 207
    const/4 v8, 0x0

    .line 208
    const/16 v24, 0x0

    .local v24, k:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v24

    move/from16 v1, v29

    if-ge v0, v1, :cond_0

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    move-object/from16 v29, v0

    aget-object v29, v29, v24

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 210
    const/4 v8, 0x1

    .line 218
    .end local v24           #k:I
    :cond_0
    :goto_2
    if-eqz v8, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypesFilter:Ljava/util/HashSet;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypesFilter:Ljava/util/HashSet;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_1

    .line 220
    const/4 v8, 0x0

    .line 229
    :cond_1
    if-eqz v8, :cond_9

    .line 230
    const/16 v18, 0x0

    .line 231
    .local v18, bIsSocialHubAccountType:Z
    const/16 v19, 0x0

    .line 233
    .local v19, bIsSyncronizeAccountType:Z
    const/16 v23, 0x0

    .local v23, j:I
    :goto_3
    sget-object v29, Lcom/android/settings/AccountTypes;->SAMSUNG_SOCIAL_HUB_ACCOUNTS:[Ljava/lang/String;

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v23

    move/from16 v1, v29

    if-ge v0, v1, :cond_2

    .line 234
    sget-object v29, Lcom/android/settings/AccountTypes;->SAMSUNG_SOCIAL_HUB_ACCOUNTS:[Ljava/lang/String;

    aget-object v29, v29, v23

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_8

    .line 235
    const/4 v10, 0x1

    .line 236
    const/16 v18, 0x1

    .line 240
    :cond_2
    const-string v29, "com.smlds.accountType"

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 241
    const/4 v11, 0x1

    .line 242
    const/16 v19, 0x1

    .line 244
    :cond_3
    if-nez v18, :cond_4

    if-nez v19, :cond_4

    .line 245
    const/4 v9, 0x1

    .line 247
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    new-instance v30, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v7}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .end local v18           #bIsSocialHubAccountType:Z
    .end local v19           #bIsSyncronizeAccountType:Z
    .end local v23           #j:I
    :cond_5
    :goto_4
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    .line 208
    .restart local v24       #k:I
    :cond_6
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1

    .line 215
    .end local v24           #k:I
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 233
    .restart local v18       #bIsSocialHubAccountType:Z
    .restart local v19       #bIsSyncronizeAccountType:Z
    .restart local v23       #j:I
    :cond_8
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 249
    .end local v18           #bIsSocialHubAccountType:Z
    .end local v19           #bIsSyncronizeAccountType:Z
    .end local v23           #j:I
    :cond_9
    const-string v29, "ChooseAccountActivity"

    const/16 v30, 0x2

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 250
    const-string v29, "ChooseAccountActivity"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Skipped pref "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ": has no authority we need"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 255
    .end local v6           #accountAuths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #accountType:Ljava/lang/String;
    .end local v8           #addAccountPref:Z
    .end local v28           #providerName:Ljava/lang/CharSequence;
    :cond_a
    add-int v29, v10, v11

    add-int v29, v29, v9

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_c

    const/4 v14, 0x1

    .line 258
    .local v14, bIsCategoryPreference:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_d

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;

    #getter for: Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->access$200(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/settings/accounts/ChooseAccountActivity;->addAccount(Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    .line 348
    :cond_b
    :goto_6
    return-void

    .line 255
    .end local v14           #bIsCategoryPreference:Z
    :cond_c
    const/4 v14, 0x0

    goto :goto_5

    .line 265
    .restart local v14       #bIsCategoryPreference:Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    if-lez v29, :cond_18

    .line 266
    if-eqz v14, :cond_e

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mSocialHub:Landroid/preference/PreferenceCategory;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mSynchronize:Landroid/preference/PreferenceCategory;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mEtc:Landroid/preference/PreferenceCategory;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 271
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_b

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;

    .line 274
    .local v27, pref:Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;
    #getter for: Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->access$200(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/ChooseAccountActivity;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 275
    .local v20, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v26, Lcom/android/settings/accounts/ProviderPreference;

    #getter for: Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->access$200(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    #getter for: Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->name:Ljava/lang/CharSequence;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->access$300(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/CharSequence;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/accounts/ProviderPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 276
    .local v26, p:Lcom/android/settings/accounts/ProviderPreference;
    if-eqz v14, :cond_17

    .line 277
    const/16 v17, 0x1

    .line 278
    .local v17, bIsFirstSocialHubAccountType:Z
    const/16 v16, 0x1

    .line 279
    .local v16, bIsFirstEtcAccountType:Z
    const/16 v18, 0x0

    .line 280
    .restart local v18       #bIsSocialHubAccountType:Z
    const/16 v19, 0x0

    .line 282
    .restart local v19       #bIsSyncronizeAccountType:Z
    const/16 v21, 0x0

    :goto_8
    sget-object v29, Lcom/android/settings/AccountTypes;->SAMSUNG_SOCIAL_HUB_ACCOUNTS:[Ljava/lang/String;

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v21

    move/from16 v1, v29

    if-ge v0, v1, :cond_f

    .line 283
    #getter for: Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->access$200(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v29

    sget-object v30, Lcom/android/settings/AccountTypes;->SAMSUNG_SOCIAL_HUB_ACCOUNTS:[Ljava/lang/String;

    aget-object v30, v30, v21

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_11

    .line 284
    const/16 v18, 0x1

    .line 288
    :cond_f
    #getter for: Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->access$200(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "com.smlds.accountType"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_10

    .line 289
    const/16 v19, 0x1

    .line 293
    :cond_10
    const/4 v15, 0x0

    .line 303
    .local v15, bIsExceptionAccountType:Z
    if-eqz v15, :cond_12

    .line 304
    const-string v29, "ChooseAccountActivity"

    const-string v30, "Exception AccountType"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 282
    .end local v15           #bIsExceptionAccountType:Z
    :cond_11
    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    .line 305
    .restart local v15       #bIsExceptionAccountType:Z
    :cond_12
    if-eqz v18, :cond_14

    .line 306
    if-eqz v17, :cond_13

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mSocialHub:Landroid/preference/PreferenceCategory;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 308
    const/16 v17, 0x0

    .line 310
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mSocialHub:Landroid/preference/PreferenceCategory;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 311
    :cond_14
    if-eqz v19, :cond_15

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mSynchronize:Landroid/preference/PreferenceCategory;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mSynchronize:Landroid/preference/PreferenceCategory;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 324
    :cond_15
    if-eqz v16, :cond_16

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mEtc:Landroid/preference/PreferenceCategory;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 326
    const/16 v16, 0x0

    .line 328
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mEtc:Landroid/preference/PreferenceCategory;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 331
    .end local v15           #bIsExceptionAccountType:Z
    .end local v16           #bIsFirstEtcAccountType:Z
    .end local v17           #bIsFirstSocialHubAccountType:Z
    .end local v18           #bIsSocialHubAccountType:Z
    .end local v19           #bIsSyncronizeAccountType:Z
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 336
    .end local v20           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v26           #p:Lcom/android/settings/accounts/ProviderPreference;
    .end local v27           #pref:Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;
    :cond_18
    const-string v29, "ChooseAccountActivity"

    const/16 v30, 0x2

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v29

    if-eqz v29, :cond_1a

    .line 337
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    .local v13, auths:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    .local v12, arr$:[Ljava/lang/String;
    array-length v0, v12

    move/from16 v25, v0

    .local v25, len$:I
    const/16 v22, 0x0

    .local v22, i$:I
    :goto_9
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_19

    aget-object v5, v12, v22

    .line 339
    .local v5, a:Ljava/lang/String;
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const/16 v29, 0x20

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    add-int/lit8 v22, v22, 0x1

    goto :goto_9

    .line 342
    .end local v5           #a:Ljava/lang/String;
    :cond_19
    const-string v29, "ChooseAccountActivity"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "No providers found for authorities: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v13           #auths:Ljava/lang/StringBuilder;
    .end local v22           #i$:I
    .end local v25           #len$:I
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    goto/16 :goto_6
.end method

.method private updateAuthDescriptions()V
    .locals 4

    .prologue
    .line 183
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    .line 184
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->onAuthDescriptionsUpdated()V

    .line 188
    return-void
.end method


# virtual methods
.method public getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    if-nez v5, :cond_2

    .line 352
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 353
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v4

    .line 354
    .local v4, syncAdapters:[Landroid/content/SyncAdapterType;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v4

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 355
    aget-object v3, v4, v1

    .line 356
    .local v3, sa:Landroid/content/SyncAdapterType;
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 357
    .local v0, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .restart local v0       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    :cond_0
    const-string v5, "ChooseAccountActivity"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 362
    const-string v5, "ChooseAccountActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "added authority "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to accountType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_1
    iget-object v5, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 368
    .end local v0           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v3           #sa:Landroid/content/SyncAdapterType;
    .end local v4           #syncAdapters:[Landroid/content/SyncAdapterType;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    return-object v5
.end method

.method protected getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "accountType"

    .prologue
    .line 377
    const/4 v3, 0x0

    .line 378
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 380
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 381
    .local v1, desc:Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/accounts/ChooseAccountActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 382
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 391
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v3

    .line 383
    :catch_0
    move-exception v2

    .line 385
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ChooseAccountActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No icon name for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 386
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 388
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    const-string v4, "ChooseAccountActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No icon resource for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "accountType"

    .prologue
    .line 400
    const/4 v3, 0x0

    .line 401
    .local v3, label:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 403
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 404
    .local v1, desc:Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/accounts/ChooseAccountActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 405
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 412
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v3

    .line 406
    :catch_0
    move-exception v2

    .line 407
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ChooseAccountActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No label name for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 408
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 409
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    const-string v4, "ChooseAccountActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No label resource for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mCancel:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    .line 461
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/16 v9, 0x8

    .line 138
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 142
    const v7, 0x1030137

    invoke-virtual {p0, v7}, Lcom/android/settings/accounts/ChooseAccountActivity;->setTheme(I)V

    .line 145
    :cond_0
    const v7, 0x7f040008

    invoke-virtual {p0, v7}, Lcom/android/settings/accounts/ChooseAccountActivity;->setContentView(I)V

    .line 146
    const v7, 0x7f050002

    invoke-virtual {p0, v7}, Lcom/android/settings/accounts/ChooseAccountActivity;->addPreferencesFromResource(I)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "authorities"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "account_types"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, accountTypesFilter:[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 152
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypesFilter:Ljava/util/HashSet;

    .line 153
    move-object v2, v1

    .local v2, arr$:[Ljava/lang/String;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    .line 154
    .local v0, accountType:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypesFilter:Ljava/util/HashSet;

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 157
    .end local v0           #accountType:Ljava/lang/String;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    .line 158
    const-string v7, "socialHub"

    invoke-virtual {p0, v7}, Lcom/android/settings/accounts/ChooseAccountActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mSocialHub:Landroid/preference/PreferenceCategory;

    .line 159
    const-string v7, "synchronize"

    invoke-virtual {p0, v7}, Lcom/android/settings/accounts/ChooseAccountActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mSynchronize:Landroid/preference/PreferenceCategory;

    .line 160
    const-string v7, "etc"

    invoke-virtual {p0, v7}, Lcom/android/settings/accounts/ChooseAccountActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mEtc:Landroid/preference/PreferenceCategory;

    .line 162
    const v7, 0x7f090019

    invoke-virtual {p0, v7}, Lcom/android/settings/accounts/ChooseAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mCancel:Landroid/widget/Button;

    .line 164
    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 165
    iget-object v7, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mCancel:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->updateAuthDescriptions()V

    .line 176
    return-void

    .line 167
    :cond_2
    const v7, 0x7f090018

    invoke-virtual {p0, v7}, Lcom/android/settings/accounts/ChooseAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 168
    .local v3, cancelLayout:Landroid/widget/LinearLayout;
    const v7, 0x7f090017

    invoke-virtual {p0, v7}, Lcom/android/settings/accounts/ChooseAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 169
    .local v6, title:Landroid/widget/TextView;
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    iget-object v7, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mCancel:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferences"
    .parameter "preference"

    .prologue
    .line 417
    instance-of v1, p2, Lcom/android/settings/accounts/ProviderPreference;

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 418
    check-cast v0, Lcom/android/settings/accounts/ProviderPreference;

    .line 419
    .local v0, pref:Lcom/android/settings/accounts/ProviderPreference;
    const-string v1, "ChooseAccountActivity"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    const-string v1, "ChooseAccountActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to add account of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/accounts/ChooseAccountActivity;->addAccount(Ljava/lang/String;)V

    .line 429
    .end local v0           #pref:Lcom/android/settings/accounts/ProviderPreference;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
