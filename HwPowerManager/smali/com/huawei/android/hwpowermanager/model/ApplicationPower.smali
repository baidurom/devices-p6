.class public Lcom/huawei/android/hwpowermanager/model/ApplicationPower;
.super Ljava/lang/Object;
.source "ApplicationPower.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/hwpowermanager/model/ApplicationPower$ApplicationModelComparator;
    }
.end annotation


# static fields
.field private static final sComparator:Lcom/huawei/android/hwpowermanager/model/ApplicationPower$ApplicationModelComparator;


# instance fields
.field private DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mMediaServerUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/huawei/android/hwpowermanager/model/ApplicationPower$ApplicationModelComparator;

    invoke-direct {v0}, Lcom/huawei/android/hwpowermanager/model/ApplicationPower$ApplicationModelComparator;-><init>()V

    sput-object v0, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->sComparator:Lcom/huawei/android/hwpowermanager/model/ApplicationPower$ApplicationModelComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x3f5

    iput v0, p0, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->mMediaServerUid:I

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->DEBUG:Z

    .line 32
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method private toDecreased100Double(I)D
    .locals 6
    .parameter "original"

    .prologue
    .line 179
    int-to-double v2, p1

    const-wide/high16 v4, 0x4059

    div-double v0, v2, v4

    .line 180
    .local v0, d:D
    return-wide v0
.end method

.method private toIncreased100Int(D)I
    .locals 3
    .parameter "original"

    .prologue
    .line 173
    const-wide/high16 v1, 0x4059

    mul-double/2addr p1, v1

    .line 174
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v0, v1

    .line 175
    .local v0, temp:I
    return v0
.end method


# virtual methods
.method public getApplicationInfo()Ljava/util/ArrayList;
    .locals 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/android/hwpowermanager/model/ApplicationModel;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v41, 0x0

    .local v41, totalPower:D
    const-wide/16 v23, 0x0

    .local v23, mediaPower:D
    new-instance v45, Ljava/util/ArrayList;

    invoke-direct/range {v45 .. v45}, Ljava/util/ArrayList;-><init>()V

    .local v45, uidArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, appInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/hwpowermanager/model/ApplicationModel;>;"
    new-instance v46, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    invoke-direct/range {v46 .. v47}, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v46 .. v46}, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->computerPowerConsumption()Ljava/util/ArrayList;

    move-result-object v5

    .local v5, appConsumption:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v46

    if-eqz v46, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;

    .local v43, uap:Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;
    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->power:D

    move-wide/from16 v46, v0

    add-double v41, v41, v46

    .line 44
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->mMediaServerUid:I

    move/from16 v46, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->uid:I

    move/from16 v47, v0

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_0

    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->power:D

    move-wide/from16 v23, v0

    goto :goto_0

    .end local v43           #uap:Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v33

    .local v33, pm:Landroid/content/pm/PackageManager;
    const/16 v46, 0x2000

    move-object/from16 v0, v33

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v6

    .local v6, appInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local v16           #i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v46

    if-eqz v46, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    .local v10, applicationInfo:Landroid/content/pm/ApplicationInfo;
    iget v0, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v44, v0

    .local v44, uid:I
    const/4 v14, 0x0

    .local v14, flag:I
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_3

    const/4 v14, 0x1

    :cond_3
    if-nez v14, :cond_2

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v33

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v30

    .local v30, packages:[Ljava/lang/String;
    if-nez v30, :cond_5

    .end local v10           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v14           #flag:I
    .end local v30           #packages:[Ljava/lang/String;
    .end local v44           #uid:I
    :cond_4
    new-instance v36, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;

    invoke-direct/range {v36 .. v36}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;-><init>()V

    .local v36, systemApp:Lcom/huawei/android/hwpowermanager/model/ApplicationModel;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v46

    add-int/lit8 v46, v46, -0x1

    move/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;

    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->power:D

    move-wide/from16 v37, v0

    .local v37, systemPower:D
    invoke-virtual/range {v36 .. v38}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setPower(D)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v46

    const v47, 0x7f020010

    invoke-virtual/range {v46 .. v47}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v39

    .local v39, systempowericon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v46

    const v47, 0x7f090025

    invoke-virtual/range {v46 .. v47}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v36

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setAppLabel(Ljava/lang/String;)V

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v22, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;

    invoke-direct/range {v22 .. v22}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;-><init>()V

    .local v22, mediaApp:Lcom/huawei/android/hwpowermanager/model/ApplicationModel;
    invoke-virtual/range {v22 .. v24}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setPower(D)V

    move-object/from16 v0, v22

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v46

    const v47, 0x7f090023

    invoke-virtual/range {v46 .. v47}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v22

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setAppLabel(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v46

    if-eqz v46, :cond_f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;

    .local v25, model:Lcom/huawei/android/hwpowermanager/model/ApplicationModel;
    const-wide/high16 v46, 0x4059

    invoke-virtual/range {v25 .. v25}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->getPower()D

    move-result-wide v48

    mul-double v46, v46, v48

    div-double v46, v46, v41

    move-object/from16 v0, v25

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setPercentageInSoftware(D)V

    goto :goto_2

    .end local v16           #i$:Ljava/util/Iterator;
    .end local v22           #mediaApp:Lcom/huawei/android/hwpowermanager/model/ApplicationModel;
    .end local v25           #model:Lcom/huawei/android/hwpowermanager/model/ApplicationModel;
    .end local v36           #systemApp:Lcom/huawei/android/hwpowermanager/model/ApplicationModel;
    .end local v37           #systemPower:D
    .end local v39           #systempowericon:Landroid/graphics/drawable/Drawable;
    .restart local v10       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v14       #flag:I
    .restart local v30       #packages:[Ljava/lang/String;
    .restart local v44       #uid:I
    :cond_5
    const/16 v29, 0x0

    .local v29, packageName:Ljava/lang/String;
    const/16 v26, 0x0

    .local v26, name:Ljava/lang/String;
    const/16 v19, 0x0

    .local v19, icon:Landroid/graphics/drawable/Drawable;
    const-wide/16 v34, 0x0

    .local v34, power:D
    const/4 v15, 0x0

    .local v15, i:I
    :goto_3
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v46, v0

    move/from16 v0, v46

    if-ge v15, v0, :cond_6

    :try_start_0
    aget-object v46, v30, v15

    const/16 v47, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .local v4, ai:Landroid/content/pm/ApplicationInfo;
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v46, v0

    if-eqz v46, :cond_a

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .end local v4           #ai:Landroid/content/pm/ApplicationInfo;
    :cond_6
    if-nez v19, :cond_7

    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    :cond_7
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v46, v0

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_b

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    iget-object v0, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v46

    if-eqz v46, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;

    .restart local v43       #uap:Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;
    move-object/from16 v0, v43

    iget v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->uid:I

    move/from16 v46, v0

    move/from16 v0, v44

    move/from16 v1, v46

    if-ne v0, v1, :cond_8

    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->power:D

    move-wide/from16 v34, v0

    .end local v17           #i$:Ljava/util/Iterator;
    .end local v43           #uap:Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;
    :cond_9
    :goto_4
    const-wide/16 v46, 0x0

    cmpl-double v46, v34, v46

    if-eqz v46, :cond_2

    new-instance v9, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;

    invoke-direct {v9}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;-><init>()V

    .local v9, appModel:Lcom/huawei/android/hwpowermanager/model/ApplicationModel;
    move/from16 v0, v44

    invoke-virtual {v9, v0}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setUid(I)V

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setAppLabel(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setPkgName(Ljava/lang/String;)V

    move-wide/from16 v0, v34

    invoke-virtual {v9, v0, v1}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setPower(D)V

    div-double v46, v34, v41

    move-wide/from16 v0, v46

    invoke-virtual {v9, v0, v1}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setAvaragePower(D)V

    iget-object v0, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v9, v0}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setProcessName(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .end local v9           #appModel:Lcom/huawei/android/hwpowermanager/model/ApplicationModel;
    :catch_0
    move-exception v46

    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v46, v0

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-le v0, v1, :cond_9

    move-object/from16 v11, v30

    .local v11, arr$:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v21, v0

    .local v21, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    move/from16 v18, v17

    .end local v17           #i$:I
    .local v18, i$:I
    :goto_5
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    aget-object v32, v11, v18

    .local v32, pkgName:Ljava/lang/String;
    const/16 v46, 0x0

    :try_start_1
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v31

    .local v31, pi:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v46, v0

    if-eqz v46, :cond_e

    .line 45
    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v46, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v47, v0

    .line 58
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    move/from16 v2, v46

    move-object/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v27

    .local v27, nm:Ljava/lang/CharSequence;
    if-eqz v27, :cond_e

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v46, v0

    if-eqz v46, :cond_c

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    const-string v46, "huguangyu"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "icon is"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .end local v18           #i$:I
    .local v17, i$:Ljava/util/Iterator;
    :cond_d
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v46

    if-eqz v46, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;

    .restart local v43       #uap:Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;
    move-object/from16 v0, v43

    iget v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->uid:I

    move/from16 v46, v0

    move/from16 v0, v44

    move/from16 v1, v46

    if-ne v0, v1, :cond_d

    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->power:D

    move-wide/from16 v34, v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .end local v17           #i$:Ljava/util/Iterator;
    .end local v27           #nm:Ljava/lang/CharSequence;
    .end local v31           #pi:Landroid/content/pm/PackageInfo;
    .end local v43           #uap:Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;
    :catch_1
    move-exception v46

    :cond_e
    add-int/lit8 v17, v18, 0x1

    .local v17, i$:I
    move/from16 v18, v17

    .end local v17           #i$:I
    .restart local v18       #i$:I
    goto/16 :goto_5

    .end local v10           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v14           #flag:I
    .end local v15           #i:I
    .end local v18           #i$:I
    .end local v19           #icon:Landroid/graphics/drawable/Drawable;
    .end local v21           #len$:I
    .end local v26           #name:Ljava/lang/String;
    .end local v29           #packageName:Ljava/lang/String;
    .end local v30           #packages:[Ljava/lang/String;
    .end local v32           #pkgName:Ljava/lang/String;
    .end local v34           #power:D
    .end local v44           #uid:I
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v22       #mediaApp:Lcom/huawei/android/hwpowermanager/model/ApplicationModel;
    .restart local v36       #systemApp:Lcom/huawei/android/hwpowermanager/model/ApplicationModel;
    .restart local v37       #systemPower:D
    .restart local v39       #systempowericon:Landroid/graphics/drawable/Drawable;
    :cond_f
    sget-object v46, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->sComparator:Lcom/huawei/android/hwpowermanager/model/ApplicationPower$ApplicationModelComparator;

    move-object/from16 v0, v46

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, appInfoListTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/hwpowermanager/model/ApplicationModel;>;"
    const-wide/high16 v12, 0x4059

    .local v12, avaragePower:D
    const/16 v40, 0x2710

    .local v40, total:I
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v46

    if-eqz v46, :cond_12

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;

    .restart local v25       #model:Lcom/huawei/android/hwpowermanager/model/ApplicationModel;
    invoke-virtual/range {v25 .. v25}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->getPercentageInSoftware()D

    move-result-wide v46

    const-wide v48, 0x3f847ae147ae147bL

    cmpl-double v46, v46, v48

    if-lez v46, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->DEBUG:Z

    move/from16 v46, v0

    if-eqz v46, :cond_10

    const-string v46, "CurrentService"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "AppLabel:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v25 .. v25}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->getAppLabel()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v46, "CurrentService"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "AvaragePower:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v25 .. v25}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->getAvaragePower()D

    move-result-wide v48

    invoke-virtual/range {v47 .. v49}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v46, "CurrentService"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "ActiveSince:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v25 .. v25}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->getActiveSince()J

    move-result-wide v48

    invoke-virtual/range {v47 .. v49}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v46, "CurrentService"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Power:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v25 .. v25}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->getPower()D

    move-result-wide v48

    invoke-virtual/range {v47 .. v49}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v25 .. v25}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->getPercentageInSoftware()D

    move-result-wide v46

    move-object/from16 v0, p0

    move-wide/from16 v1, v46

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->toIncreased100Int(D)I

    move-result v20

    .local v20, increased100IntData:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->DEBUG:Z

    move/from16 v46, v0

    if-eqz v46, :cond_11

    const-string v46, "CurrentService"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "increased100IntData = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    sub-int v40, v40, v20

    goto/16 :goto_6

    .end local v20           #increased100IntData:I
    .end local v25           #model:Lcom/huawei/android/hwpowermanager/model/ApplicationModel;
    :cond_12
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->toDecreased100Double(I)D

    move-result-wide v12

    .line 128
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->DEBUG:Z

    move/from16 v46, v0

    if-eqz v46, :cond_13

    const-string v46, "CurrentService"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "avaragePower = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const-wide/16 v46, 0x0

    cmpl-double v46, v12, v46

    if-lez v46, :cond_14

    new-instance v28, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;

    invoke-direct/range {v28 .. v28}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;-><init>()V

    .local v28, otherApp:Lcom/huawei/android/hwpowermanager/model/ApplicationModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v46

    const v47, 0x7f090026

    invoke-virtual/range {v46 .. v47}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v28

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setAppLabel(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v12, v13}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setPercentageInSoftware(D)V

    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v46

    move-object/from16 v0, v28

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v28           #otherApp:Lcom/huawei/android/hwpowermanager/model/ApplicationModel;
    :cond_14
    return-object v8
.end method
