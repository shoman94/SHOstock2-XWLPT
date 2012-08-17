.class public Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockGenericFragment"
.end annotation


# static fields
.field private static isFacewithVoice:Z


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mPasswordConfirmed:Z

.field private mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isFacewithVoice:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    return-void
.end method

.method private allowedForFallback(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 368
    const-string v0, "unlock_backup_info"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_pattern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private disableUnusablePreferences(I)V
    .locals 14
    .parameter "quality"

    .prologue
    const v13, 0x8000

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 318
    .local v2, entries:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v12, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v9, v12, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 320
    .local v5, onlyShowFallback:Z
    iget-object v9, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v9}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v8

    .line 322
    .local v8, weakBiometricAvailable:Z
    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f0a0006

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_3

    move v0, v10

    .line 324
    .local v0, biometricAndVoiceAvaiable:Z
    :goto_0
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .local v3, i:I
    :goto_1
    if-ltz v3, :cond_14

    .line 325
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    .line 326
    .local v6, pref:Landroid/preference/Preference;
    instance-of v9, v6, Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_2

    move-object v9, v6

    .line 327
    check-cast v9, Landroid/preference/PreferenceScreen;

    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 328
    .local v4, key:Ljava/lang/String;
    const/4 v1, 0x1

    .line 329
    .local v1, enabled:Z
    const/4 v7, 0x1

    .line 330
    .local v7, visible:Z
    const-string v9, "unlock_set_off"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 331
    if-gtz p1, :cond_4

    move v1, v10

    .line 350
    :cond_0
    :goto_2
    if-eqz v7, :cond_1

    if-eqz v5, :cond_13

    invoke-direct {p0, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->allowedForFallback(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_13

    .line 351
    :cond_1
    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 324
    .end local v1           #enabled:Z
    .end local v4           #key:Ljava/lang/String;
    .end local v7           #visible:Z
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .end local v0           #biometricAndVoiceAvaiable:Z
    .end local v3           #i:I
    .end local v6           #pref:Landroid/preference/Preference;
    :cond_3
    move v0, v11

    .line 322
    goto :goto_0

    .restart local v0       #biometricAndVoiceAvaiable:Z
    .restart local v1       #enabled:Z
    .restart local v3       #i:I
    .restart local v4       #key:Ljava/lang/String;
    .restart local v6       #pref:Landroid/preference/Preference;
    .restart local v7       #visible:Z
    :cond_4
    move v1, v11

    .line 331
    goto :goto_2

    .line 332
    :cond_5
    const-string v9, "unlock_set_none"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 333
    if-gtz p1, :cond_6

    move v1, v10

    :goto_4
    goto :goto_2

    :cond_6
    move v1, v11

    goto :goto_4

    .line 334
    :cond_7
    const-string v9, "unlock_set_biometric_weak"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 335
    if-gt p1, v13, :cond_8

    move v1, v10

    .line 336
    :goto_5
    move v7, v8

    goto :goto_2

    :cond_8
    move v1, v11

    .line 335
    goto :goto_5

    .line 337
    :cond_9
    const-string v9, "unlock_set_biometric_weak_with_voice"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 338
    if-gt p1, v13, :cond_a

    move v1, v10

    .line 339
    :goto_6
    move v7, v0

    goto :goto_2

    :cond_a
    move v1, v11

    .line 338
    goto :goto_6

    .line 340
    :cond_b
    const-string v9, "unlock_set_signature"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 341
    const v9, 0x9000

    if-gt p1, v9, :cond_c

    move v1, v10

    .line 342
    :goto_7
    iget-object v9, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v9}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isSignatureLockInstalled()Z

    move-result v7

    goto :goto_2

    :cond_c
    move v1, v11

    .line 341
    goto :goto_7

    .line 343
    :cond_d
    const-string v9, "unlock_set_pattern"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 344
    const/high16 v9, 0x1

    if-gt p1, v9, :cond_e

    move v1, v10

    :goto_8
    goto :goto_2

    :cond_e
    move v1, v11

    goto :goto_8

    .line 345
    :cond_f
    const-string v9, "unlock_set_pin"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 346
    const/high16 v9, 0x2

    if-gt p1, v9, :cond_10

    move v1, v10

    :goto_9
    goto :goto_2

    :cond_10
    move v1, v11

    goto :goto_9

    .line 347
    :cond_11
    const-string v9, "unlock_set_password"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 348
    const/high16 v9, 0x6

    if-gt p1, v9, :cond_12

    move v1, v10

    :goto_a
    goto/16 :goto_2

    :cond_12
    move v1, v11

    goto :goto_a

    .line 352
    :cond_13
    if-nez v1, :cond_2

    .line 353
    const v9, 0x7f070162

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setSummary(I)V

    .line 354
    invoke-virtual {v6, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 358
    .end local v1           #enabled:Z
    .end local v4           #key:Ljava/lang/String;
    .end local v6           #pref:Landroid/preference/Preference;
    .end local v7           #visible:Z
    :cond_14
    return-void
.end method

.method private getBiometricSensorIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 373
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/ChooseLockGeneric;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 374
    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 375
    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 376
    const-string v1, ":android:show_fragment_title"

    const v2, 0x7f070150

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 382
    const-string v2, "com.android.facelock"

    const-string v3, "com.android.facelock.SetupIntro"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const-string v2, "showTutorial"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/high16 v3, 0x800

    invoke-static {v2, v4, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 385
    const-string v2, "PendingIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 386
    return-object v1
.end method

.method private getBiometricSensorIntentwithVoice()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 389
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VOICE_SETTING_LOCK"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 390
    .local v0, fallBackIntent:Landroid/content/Intent;
    const-string v4, "SETTING_VOICE_LOCK"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 392
    const/4 v3, 0x1

    .line 393
    .local v3, showTutorial:Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 394
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.android.facelock"

    const-string v5, "com.android.facelock.SetupIntro"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const-string v4, "showTutorial"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 397
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 398
    .local v2, pending:Landroid/app/PendingIntent;
    const-string v4, "PendingIntent"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 400
    return-object v1
.end method

.method private getSignatureIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 404
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/ChooseLockGeneric;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 405
    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 406
    const-string v1, "lockscreen.signature_fallback"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 407
    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 408
    const-string v1, ":android:show_fragment_title"

    const v2, 0x7f070150

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 413
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 414
    const-string v2, "com.sec.android.signaturelock"

    const-string v3, "com.sec.android.signaturelock.SetupIntro"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    const-string v2, "showTutorial"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 416
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/high16 v3, 0x800

    invoke-static {v2, v5, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 417
    const-string v2, "PendingIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 418
    return-object v1
.end method

.method private updatePreferencesOrFinish()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 233
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "lockscreen.password_type"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 234
    .local v2, quality:I
    if-ne v2, v4, :cond_3

    .line 236
    const-string v3, "minimum_quality"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 237
    invoke-direct {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(I)I

    move-result v2

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 239
    .local v1, prefScreen:Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 242
    :cond_0
    const v3, 0x7f050034

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferencesFromResource(I)V

    .line 252
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-eqz v3, :cond_2

    .line 253
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/enterprise/PasswordPolicy;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 254
    const/high16 v3, 0x4

    invoke-direct {p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(I)V

    .line 265
    .end local v1           #prefScreen:Landroid/preference/PreferenceScreen;
    :goto_0
    return-void

    .line 256
    .restart local v1       #prefScreen:Landroid/preference/PreferenceScreen;
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(I)V

    goto :goto_0

    .line 259
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(I)V

    goto :goto_0

    .line 263
    .end local v1           #prefScreen:Landroid/preference/PreferenceScreen;
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0
.end method

.method private upgradeQuality(I)I
    .locals 0
    .parameter "quality"

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForDPM(I)I

    move-result p1

    .line 269
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForEncryption(I)I

    move-result p1

    .line 270
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForKeyStore(I)I

    move-result p1

    .line 271
    return p1
.end method

.method private upgradeQualityForDPM(I)I
    .locals 3
    .parameter "quality"

    .prologue
    .line 276
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    .line 277
    .local v0, minQuality:I
    if-ge p1, v0, :cond_0

    .line 278
    move p1, v0

    .line 280
    :cond_0
    return p1
.end method

.method private upgradeQualityForEncryption(I)I
    .locals 3
    .parameter "quality"

    .prologue
    .line 291
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v1

    .line 292
    .local v1, encryptionStatus:I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 294
    .local v0, encrypted:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 295
    const/high16 v2, 0x2

    if-ge p1, v2, :cond_1

    .line 296
    const/high16 p1, 0x2

    .line 299
    :cond_1
    return p1

    .line 292
    .end local v0           #encrypted:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private upgradeQualityForKeyStore(I)I
    .locals 1
    .parameter "quality"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    const/high16 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 305
    const/high16 p1, 0x1

    .line 308
    :cond_0
    return p1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 205
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 206
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 208
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 222
    :goto_0
    return-void

    .line 209
    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->deleteTempGallery()V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 214
    :cond_1
    const/16 v0, 0x67

    if-ne p1, v0, :cond_2

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 218
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 94
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 97
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    .line 98
    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "confirm_credentials"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 103
    .local v0, confirmCredentials:Z
    if-nez v0, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 106
    const-string v2, "enterprise_policy"

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 108
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 111
    :cond_0
    if-eqz p1, :cond_1

    .line 112
    const-string v2, "password_confirmed"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 115
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-nez v2, :cond_4

    .line 116
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 118
    .local v1, helper:Lcom/android/settings/ChooseLockSettingsHelper;
    const/16 v2, 0x64

    invoke-virtual {v1, v2, v5, v5}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 119
    iput-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 120
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 125
    .end local v1           #helper:Lcom/android/settings/ChooseLockSettingsHelper;
    :cond_2
    :goto_1
    return-void

    .line 103
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 123
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v11, 0x7f0400a9

    const v10, 0x102000a

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 166
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    .line 167
    .local v3, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 169
    .local v2, onlyShowFallback:Z
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "lockscreen.biometric_weak_with_voice_fallback"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 171
    .local v4, voiceFallback:Z
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "lockscreen.signature_fallback"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 175
    .local v1, isSignature:Z
    const-string v5, "ChooseLockGeneric"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreateView : onlyShowFallback:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " voiceFallback:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v11, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 180
    .local v0, header:Landroid/view/View;
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5, v0, v9, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 190
    .end local v0           #header:Landroid/view/View;
    :cond_0
    :goto_0
    return-object v3

    .line 181
    :cond_1
    if-eqz v2, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v11, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 184
    .restart local v0       #header:Landroid/view/View;
    if-eqz v1, :cond_2

    move-object v5, v0

    .line 185
    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07097e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :cond_2
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5, v0, v9, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 200
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 201
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 194
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 195
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const v5, 0x8000

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 130
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, key:Ljava/lang/String;
    const/4 v0, 0x1

    .line 132
    .local v0, handled:Z
    const-string v2, "unlock_set_off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    invoke-virtual {p0, v3, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    .line 160
    :goto_0
    return v0

    .line 135
    :cond_0
    const-string v2, "unlock_set_none"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    invoke-virtual {p0, v3, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 138
    :cond_1
    const-string v2, "unlock_set_biometric_weak"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    invoke-virtual {p0, v5, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 141
    :cond_2
    const-string v2, "unlock_set_biometric_weak_with_voice"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 142
    sput-boolean v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isFacewithVoice:Z

    .line 143
    invoke-virtual {p0, v5, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 145
    :cond_3
    const-string v2, "unlock_set_signature"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 146
    const v2, 0x9000

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 148
    :cond_4
    const-string v2, "unlock_set_pattern"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 149
    const/high16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 151
    :cond_5
    const-string v2, "unlock_set_pin"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 152
    const/high16 v2, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 154
    :cond_6
    const-string v2, "unlock_set_password"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 155
    const/high16 v2, 0x4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 158
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 226
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 228
    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 229
    return-void
.end method

.method updateUnlockMethodAndFinish(IZ)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x67

    const/16 v9, 0x65

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 432
    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-nez v3, :cond_0

    .line 433
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to update password without confirming it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 438
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "lockscreen.signature_fallback"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 441
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(I)I

    move-result v5

    .line 443
    const/high16 v6, 0x2

    if-lt v5, v6, :cond_4

    .line 444
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v1

    .line 445
    if-ge v1, v0, :cond_d

    .line 448
    :goto_0
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v1

    .line 449
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-class v8, Lcom/android/settings/ChooseLockPassword;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v6

    .line 450
    const-string v7, "lockscreen.password_type"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 451
    const-string v5, "lockscreen.password_min"

    invoke-virtual {v6, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 452
    const-string v0, "lockscreen.password_max"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 453
    const-string v0, "confirm_credentials"

    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 454
    const-string v0, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 456
    const-string v0, "lockscreen.signature_fallback"

    invoke-virtual {v6, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 458
    if-eqz v3, :cond_2

    .line 459
    if-eqz v4, :cond_1

    .line 460
    invoke-virtual {p0, v6, v10}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 513
    :goto_1
    return-void

    .line 462
    :cond_1
    invoke-virtual {p0, v6, v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 466
    :cond_2
    const/high16 v0, 0x200

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 467
    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    .line 511
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_1

    .line 469
    :cond_4
    const/high16 v0, 0x1

    if-ne v5, v0, :cond_9

    .line 470
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 471
    :goto_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 472
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v0, :cond_6

    const-class v0, Lcom/android/settings/ChooseLockPatternTutorial;

    :goto_4
    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 475
    const-string v0, "key_lock_method"

    const-string v5, "pattern"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const-string v0, "confirm_credentials"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 477
    const-string v0, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 479
    const-string v0, "lockscreen.signature_fallback"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 481
    if-eqz v3, :cond_8

    .line 482
    if-eqz v4, :cond_7

    .line 483
    invoke-virtual {p0, v1, v10}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_5
    move v0, v2

    .line 470
    goto :goto_3

    .line 472
    :cond_6
    const-class v0, Lcom/android/settings/ChooseLockPattern;

    goto :goto_4

    .line 485
    :cond_7
    invoke-virtual {p0, v1, v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 489
    :cond_8
    const/high16 v0, 0x200

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 490
    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 492
    :cond_9
    const v0, 0x8000

    if-ne v5, v0, :cond_b

    .line 493
    sget-boolean v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isFacewithVoice:Z

    if-nez v0, :cond_a

    .line 494
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getBiometricSensorIntent()Landroid/content/Intent;

    move-result-object v0

    .line 495
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "lock_screen_face_with_voice"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 496
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    .line 502
    :goto_5
    sput-boolean v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isFacewithVoice:Z

    goto :goto_2

    .line 498
    :cond_a
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getBiometricSensorIntentwithVoice()Landroid/content/Intent;

    move-result-object v0

    .line 499
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_screen_face_with_voice"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 500
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    .line 503
    :cond_b
    const v0, 0x9000

    if-ne v5, v0, :cond_c

    .line 504
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSignatureIntent()Landroid/content/Intent;

    move-result-object v0

    .line 505
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 506
    :cond_c
    if-nez v5, :cond_3

    .line 507
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 508
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 509
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    goto/16 :goto_2

    :cond_d
    move v0, v1

    goto/16 :goto_0
.end method
