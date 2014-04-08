.class public Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;
.super Ljava/lang/Object;
.source "SavingSettingUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;
    }
.end annotation


# static fields
.field public static final BASE_URI:Landroid/net/Uri;

.field private static CUST_URL:Ljava/lang/String;

.field public static final FORBIDDEN_APPS_URI:Landroid/net/Uri;

.field public static final PROTECTED_APPS_URI:Landroid/net/Uri;

.field public static final ROGUE_APPS_URI:Landroid/net/Uri;

.field public static final SEQ_URI:Landroid/net/Uri;

.field private static app_show_level:I

.field private static average_current_fg:I

.field private static count_frequency:I

.field private static count_frequency_fg:I

.field private static dangerous_current_level:I

.field private static dangerous_level_standard:I

.field private static high_level_standard:I

.field private static min_interval_time:I

.field private static msg_send_interval:I

.field private static rogueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "content://com.huawei.android.batteryspriteprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->BASE_URI:Landroid/net/Uri;

    .line 53
    sget-object v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->BASE_URI:Landroid/net/Uri;

    const-string v1, "protectedapps"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->PROTECTED_APPS_URI:Landroid/net/Uri;

    .line 56
    sget-object v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->BASE_URI:Landroid/net/Uri;

    const-string v1, "rogueapps"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->ROGUE_APPS_URI:Landroid/net/Uri;

    .line 59
    sget-object v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->BASE_URI:Landroid/net/Uri;

    const-string v1, "forbiddenapps"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->FORBIDDEN_APPS_URI:Landroid/net/Uri;

    .line 62
    sget-object v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->BASE_URI:Landroid/net/Uri;

    const-string v1, "seq"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->SEQ_URI:Landroid/net/Uri;

    .line 80
    const/16 v0, 0xa

    sput v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->high_level_standard:I

    .line 81
    const/16 v0, 0xf0

    sput v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->msg_send_interval:I

    .line 82
    const/16 v0, 0x3c

    sput v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->count_frequency:I

    .line 83
    const/16 v0, 0x32

    sput v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->dangerous_level_standard:I

    .line 84
    const/4 v0, 0x1

    sput v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->app_show_level:I

    .line 85
    const/16 v0, 0x1e

    sput v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->dangerous_current_level:I

    .line 86
    const/16 v0, 0x14

    sput v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->min_interval_time:I

    .line 87
    const/16 v0, 0x15e

    sput v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->average_current_fg:I

    .line 88
    const/4 v0, 0x5

    sput v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->count_frequency_fg:I

    .line 91
    const-string v0, "/data/cust"

    sput-object v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->CUST_URL:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->rogueList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    return-void
.end method

.method public static addAppsToForbidden(Landroid/content/Context;)V
    .locals 21
    .parameter "mContext"

    .prologue
    .line 822
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/4 v1, 0x0

    const-string v2, "distinct package_name"

    aput-object v2, v18, v1

    .line 824
    .local v18, projection:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->FORBIDDEN_APPS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-static {v1, v2, v0, v3}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->queryPackageNameFromForbiddenapps(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 825
    .local v8, allAppsInDB:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "SavingSettingUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allAppsInDB size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const/4 v7, 0x0

    .line 828
    .local v7, IsOnceWrite:Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->SEQ_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 831
    .local v10, cursor:Landroid/database/Cursor;
    if-nez v10, :cond_2

    .line 832
    const/4 v7, 0x0

    .line 838
    :cond_0
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz v7, :cond_3

    .line 895
    :cond_1
    :goto_1
    return-void

    .line 833
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 834
    const-string v1, "SavingSettingUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const/4 v7, 0x1

    goto :goto_0

    .line 842
    :cond_3
    new-instance v19, Ljava/util/ArrayList;

    const/16 v1, 0x96

    move-object/from16 v0, v19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 843
    .local v19, sOperationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 844
    .local v20, values:Landroid/content/ContentValues;
    const/4 v9, 0x0

    .line 845
    .local v9, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static/range {p0 .. p0}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->queryBootUsrAndCustApps(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v15

    .line 846
    .local v15, mBootUsrAndCustAppsLists:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const-string v1, "Usr"

    invoke-virtual {v15, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 847
    .local v16, mBootUsrApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "Cust"

    invoke-virtual {v15, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 865
    .local v13, mBootCustApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 866
    .local v17, mBootUsrAppsSize:I
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 867
    .local v14, mBootCustAppsSize:I
    const-string v1, "SavingSettingUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBootUsrAppsSize is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const-string v1, "SavingSettingUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBootCustAppsSize is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    move/from16 v0, v17

    if-ge v12, v0, :cond_4

    .line 870
    const-string v2, "package_name"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const-string v1, "app_type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 872
    sget-object v1, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->FORBIDDEN_APPS_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 873
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 874
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 888
    :cond_4
    :try_start_0
    const-string v1, "SavingSettingUtil"

    const-string v2, "applyBatch operation !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.huawei.android.batteryspriteprovider"

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 890
    :catch_0
    move-exception v11

    .line 891
    .local v11, e:Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 892
    .end local v11           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v11

    .line 893
    .local v11, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v11}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public static cancelNotification(Landroid/content/Context;)V
    .locals 1
    .parameter "mContext"

    .prologue
    .line 666
    new-instance v0, Lcom/huawei/android/hwpowermanager/UserNotifier;

    invoke-direct {v0, p0}, Lcom/huawei/android/hwpowermanager/UserNotifier;-><init>(Landroid/content/Context;)V

    .line 667
    .local v0, userNotifier:Lcom/huawei/android/hwpowermanager/UserNotifier;
    invoke-virtual {v0}, Lcom/huawei/android/hwpowermanager/UserNotifier;->destoryNotification()V

    .line 668
    return-void
.end method

.method public static delFromForbiddenapps(Landroid/content/Context;)V
    .locals 11
    .parameter "mContext"

    .prologue
    .line 783
    invoke-static {p0}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->queryCustApps(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 784
    .local v2, custApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 785
    .local v1, counts:I
    if-gtz v1, :cond_1

    .line 798
    :cond_0
    return-void

    .line 788
    :cond_1
    const/4 v8, 0x1

    new-array v7, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "distinct package_name"

    aput-object v9, v7, v8

    .line 789
    .local v7, projection:[Ljava/lang/String;
    const-string v0, "app_type = 2"

    .line 790
    .local v0, condition:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->FORBIDDEN_APPS_URI:Landroid/net/Uri;

    invoke-static {v8, v9, v7, v0}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->queryPackageNameFromForbiddenapps(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 791
    .local v3, custAppsInDB:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 792
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 793
    .local v4, delCounts:I
    const-string v5, ""

    .line 794
    .local v5, deleteCondition:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v4, :cond_0

    .line 795
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "package_name = \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 796
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->FORBIDDEN_APPS_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v5, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 794
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public static deleteFromDB(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "uri"
    .parameter "packName"

    .prologue
    .line 650
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 651
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "package_name=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 653
    return-void
.end method

.method public static deleteFromSmartProviderDB(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "uri"
    .parameter "packageName"
    .parameter "mType"

    .prologue
    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package_name = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" and list_type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 658
    .local v0, deleteCondition:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 659
    return-void
.end method

.method public static findPowerWarningParameterFromXml(Landroid/content/Context;)Ljava/util/Map;
    .locals 12
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 408
    .local v5, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 409
    .local v3, fin:Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 411
    .local v9, xrp:Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getCustPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/xml/hw_powersaving_powerwarning_parameter.xml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 413
    .local v0, custWarningParameterFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 414
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 415
    .end local v3           #fin:Ljava/io/FileInputStream;
    .local v4, fin:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 416
    const/4 v10, 0x0

    invoke-interface {v9, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-object v3, v4

    .line 422
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    :goto_0
    :try_start_2
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_3

    .line 423
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 424
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 425
    .local v6, name:Ljava/lang/String;
    const-string v10, "Parameter"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 427
    const/4 v10, 0x0

    const-string v11, "name"

    invoke-interface {v9, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 428
    .local v8, parametername:Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "value"

    invoke-interface {v9, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 431
    .local v7, parameter:I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #parameter:I
    .end local v8           #parametername:Ljava/lang/String;
    :cond_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 437
    .end local v0           #custWarningParameterFile:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 438
    .local v2, e1:Ljava/lang/RuntimeException;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 442
    if-eqz v3, :cond_1

    .line 444
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 450
    .end local v2           #e1:Ljava/lang/RuntimeException;
    :cond_1
    :goto_2
    return-object v5

    .line 418
    .restart local v0       #custWarningParameterFile:Ljava/io/File;
    :cond_2
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f040003

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v9

    goto :goto_0

    .line 442
    :cond_3
    if-eqz v3, :cond_1

    .line 444
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 445
    :catch_1
    move-exception v1

    .line 446
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 445
    .end local v0           #custWarningParameterFile:Ljava/io/File;
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #e1:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 446
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 439
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #e1:Ljava/lang/RuntimeException;
    :catch_3
    move-exception v1

    .line 440
    .local v1, e:Ljava/lang/Exception;
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 442
    if-eqz v3, :cond_1

    .line 444
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_2

    .line 445
    :catch_4
    move-exception v1

    .line 446
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 442
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v3, :cond_4

    .line 444
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 447
    :cond_4
    :goto_5
    throw v10

    .line 445
    :catch_5
    move-exception v1

    .line 446
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 442
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v0       #custWarningParameterFile:Ljava/io/File;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    goto :goto_4

    .line 439
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    goto :goto_3

    .line 437
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static findProtectedApps(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "resolver"
    .parameter "selection"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 100
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->PROTECTED_APPS_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "distinct package_name"

    aput-object v3, v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 102
    if-eqz v6, :cond_1

    .line 103
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v7

    .line 108
    .local v7, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "SavingSettingUtil"

    const-string v1, "Database exception!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    if-eqz v6, :cond_0

    .line 111
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 114
    .end local v7           #ex:Landroid/database/sqlite/SQLiteException;
    :cond_0
    :goto_1
    return-object v8

    .line 110
    :cond_1
    if-eqz v6, :cond_0

    .line 111
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 110
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 111
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static findWhiteListFromXml(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;>;"
    const/4 v3, 0x0

    .line 353
    .local v3, fin:Ljava/io/FileInputStream;
    const/4 v10, 0x0

    .line 355
    .local v10, xrp:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    .line 357
    .local v5, isChecked:Z
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getCustPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/xml/hw_powersaving_packagename_whitelist.xml"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    .local v0, custWhiteListFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 360
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 361
    .end local v3           #fin:Ljava/io/FileInputStream;
    .local v4, fin:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 362
    const/4 v11, 0x0

    invoke-interface {v10, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-object v3, v4

    .line 368
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    :goto_0
    :try_start_2
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_4

    .line 369
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 370
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 371
    .local v8, name:Ljava/lang/String;
    const-string v11, "package"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 373
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 374
    .local v9, pkg:Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "check"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 375
    .local v6, isRogue:Ljava/lang/String;
    const-string v11, "rogue"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 376
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 377
    new-instance v11, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;

    invoke-direct {v11, v9, v5}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    .end local v6           #isRogue:Ljava/lang/String;
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #pkg:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 386
    .end local v0           #custWhiteListFile:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 387
    .local v2, e1:Ljava/lang/RuntimeException;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 391
    if-eqz v3, :cond_1

    .line 393
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 399
    .end local v2           #e1:Ljava/lang/RuntimeException;
    :cond_1
    :goto_3
    return-object v7

    .line 364
    .restart local v0       #custWhiteListFile:Ljava/io/File;
    :cond_2
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/high16 v12, 0x7f04

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    goto :goto_0

    .line 379
    .restart local v6       #isRogue:Ljava/lang/String;
    .restart local v8       #name:Ljava/lang/String;
    .restart local v9       #pkg:Ljava/lang/String;
    :cond_3
    sget-object v11, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->rogueList:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 388
    .end local v0           #custWhiteListFile:Ljava/io/File;
    .end local v6           #isRogue:Ljava/lang/String;
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #pkg:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 389
    .local v1, e:Ljava/lang/Exception;
    :goto_4
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 391
    if-eqz v3, :cond_1

    .line 393
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 394
    :catch_2
    move-exception v1

    .line 395
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 391
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #custWhiteListFile:Ljava/io/File;
    :cond_4
    if-eqz v3, :cond_1

    .line 393
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    .line 394
    :catch_3
    move-exception v1

    .line 395
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 394
    .end local v0           #custWhiteListFile:Ljava/io/File;
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #e1:Ljava/lang/RuntimeException;
    :catch_4
    move-exception v1

    .line 395
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 391
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #e1:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v11

    :goto_5
    if-eqz v3, :cond_5

    .line 393
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 396
    :cond_5
    :goto_6
    throw v11

    .line 394
    :catch_5
    move-exception v1

    .line 395
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 391
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v0       #custWhiteListFile:Ljava/io/File;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    goto :goto_5

    .line 388
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    goto :goto_4

    .line 386
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static forceStopPackageAndSyncSaving(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, packages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 672
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 683
    :cond_0
    return-void

    .line 673
    :cond_1
    const-string v2, "SavingSettingUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xxxx Force stop package by pg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-static {p0, p1}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->killAppsByPG(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 675
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 678
    .local v1, pkg:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v5}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getRogue(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 679
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v1, v5, v3}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->setRogue(Landroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static getAddedCustimizedApps(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, listInDB:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p1, listInCust:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v0, addedList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;

    .line 302
    .local v2, pkg:Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;
    invoke-virtual {v2}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 303
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 306
    .end local v2           #pkg:Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;
    :cond_1
    return-object v0
.end method

.method public static getAppInfoByPackageName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 4
    .parameter "context"
    .parameter "pName"

    .prologue
    const/4 v2, 0x0

    .local v2, resultApp:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getAppInfoByUid(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 7
    .parameter "context"
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 471
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v4, resultApp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 474
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 476
    .local v2, pkaName:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v5, v2

    if-lez v5, :cond_0

    .line 477
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_0

    .line 479
    :try_start_0
    aget-object v5, v2, v1

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1           #i:I
    :cond_0
    return-object v4
.end method

.method public static getApp_show_level()I
    .locals 1

    .prologue
    .line 570
    sget v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->app_show_level:I

    return v0
.end method

.method public static getAverage_current_fg()I
    .locals 1

    .prologue
    .line 562
    sget v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->average_current_fg:I

    return v0
.end method

.method public static getCount_frequency_fg()I
    .locals 1

    .prologue
    .line 566
    sget v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->count_frequency_fg:I

    return v0
.end method

.method public static getCustPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    const-string v0, "/data/cust"

    return-object v0
.end method

.method public static getCustimizedSysAppsFromCust(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    invoke-static {p0}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->findWhiteListFromXml(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getCustimizedSysAppsFromDB(Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 9
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v8, resultList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 268
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->PROTECTED_APPS_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "package_name"

    aput-object v3, v2, v0

    const-string v3, "list_type=2"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 270
    if-eqz v6, :cond_1

    .line 271
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 275
    :catch_0
    move-exception v7

    .line 276
    .local v7, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "SavingSettingUtil"

    const-string v1, "Database exception!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    if-eqz v6, :cond_0

    .line 279
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 282
    .end local v7           #ex:Landroid/database/sqlite/SQLiteException;
    :cond_0
    :goto_1
    return-object v8

    .line 278
    :cond_1
    if-eqz v6, :cond_0

    .line 279
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 278
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 279
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getDangerous_current_level()I
    .locals 1

    .prologue
    .line 554
    sget v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->dangerous_current_level:I

    return v0
.end method

.method public static getDangerous_level_standard()I
    .locals 1

    .prologue
    .line 550
    sget v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->dangerous_level_standard:I

    return v0
.end method

.method public static getHigh_level_standard()I
    .locals 1

    .prologue
    .line 546
    sget v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->high_level_standard:I

    return v0
.end method

.method public static getLastModifiedOfWhiteList()J
    .locals 3

    .prologue
    .line 286
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getCustPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/xml/hw_powersaving_packagename_whitelist.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, whiteListCustFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    const-wide/16 v1, 0x0

    .line 291
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    goto :goto_0
.end method

.method public static getMin_interval_time()I
    .locals 1

    .prologue
    .line 558
    sget v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->min_interval_time:I

    return v0
.end method

.method public static getMsgSendInterval()I
    .locals 1

    .prologue
    .line 542
    sget v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->msg_send_interval:I

    return v0
.end method

.method public static getRemovedCustimizedApps(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, listInDB:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p1, listInCust:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v4, removedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v2, packageNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;

    .line 313
    .local v1, item:Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;
    invoke-virtual {v1}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 316
    .end local v1           #item:Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 318
    .local v3, pkg:Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 319
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 322
    .end local v3           #pkg:Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method public static getRogue(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 9
    .parameter "resolver"
    .parameter "pkgname"
    .parameter "flag"

    .prologue
    const/4 v2, 0x0

    .line 143
    const/4 v8, 0x0

    .line 144
    .local v8, obj:Ljava/lang/Object;
    const-string v7, ""

    .line 145
    .local v7, fieldName:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 155
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid segment flag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :pswitch_0
    const-string v7, "isrogue"

    .line 158
    :goto_0
    const-string v0, "content://com.huawei.android.batteryspriteprovider/rogueapps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 159
    .local v1, uri:Landroid/net/Uri;
    const-string v3, "pkgname = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 161
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 162
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 163
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 164
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 166
    .end local v8           #obj:Ljava/lang/Object;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 169
    :cond_1
    return-object v8

    .line 148
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .restart local v8       #obj:Ljava/lang/Object;
    :pswitch_1
    const-string v7, "ignore"

    .line 149
    goto :goto_0

    .line 150
    :pswitch_2
    const-string v7, "clear"

    .line 151
    goto :goto_0

    .line 152
    :pswitch_3
    const-string v7, "presetblackapp"

    .line 153
    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getRogueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 404
    sget-object v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->rogueList:Ljava/util/List;

    return-object v0
.end method

.method public static initalPowerWarningParameter(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 519
    invoke-static {p0}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->findPowerWarningParameterFromXml(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 520
    .local v0, powerWarningParameter:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "high_level_standard"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->high_level_standard:I

    .line 521
    const-string v1, "msg_send_interval"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->msg_send_interval:I

    .line 522
    const-string v1, "count_frequency"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->count_frequency:I

    .line 523
    const-string v1, "dangerous_level_standard"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->dangerous_level_standard:I

    .line 524
    const-string v1, "app_show_level"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->app_show_level:I

    .line 525
    const-string v1, "dangerous_current_level"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->dangerous_current_level:I

    .line 526
    const-string v1, "min_interval_time"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->min_interval_time:I

    .line 527
    const-string v1, "average_current_fg"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->average_current_fg:I

    .line 528
    const-string v1, "count_frequency_fg"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->count_frequency_fg:I

    .line 530
    const-string v1, "SavingSettingUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAlarm and high_level_standard is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getHigh_level_standard()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msg_send_interval is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getMsgSendInterval()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " count_frequency is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->count_frequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dangerous_level_standard is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getDangerous_level_standard()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dangerous_current_level is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getDangerous_current_level()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " min_interval_time is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getMin_interval_time()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " average_current_fg is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getAverage_current_fg()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " count_frequency_fg is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getCount_frequency_fg()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " app_show_level is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getApp_show_level()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    return-void
.end method

.method public static insertCustimizedAppsToDB(Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 333
    .local v0, cValues:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 334
    .local v4, resolver:Landroid/content/ContentResolver;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;

    .line 335
    .local v2, item:Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;
    invoke-virtual {v2}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, packageName:Ljava/lang/String;
    const-string v5, "package_name"

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v5, "list_type"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 341
    sget-object v5, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->PROTECTED_APPS_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 342
    invoke-virtual {v2}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 343
    const-string v5, "package_name"

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v5, "list_type"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 345
    sget-object v5, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->PROTECTED_APPS_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 348
    .end local v2           #item:Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;
    .end local v3           #packageName:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static insertRogue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 5
    .parameter "resolver"
    .parameter "pkgname"
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 174
    invoke-static {p0, p1, v3}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getRogue(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .line 175
    .local v0, obj:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 176
    const-string v2, "content://com.huawei.android.batteryspriteprovider/rogueapps"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 177
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0, v1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 185
    .end local v1           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 179
    :cond_0
    const-string v2, "isrogue"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, p1, v3, v2}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->setRogue(Landroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/Object;)V

    .line 180
    const/4 v2, 0x1

    const-string v3, "ignore"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, p1, v2, v3}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->setRogue(Landroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/Object;)V

    .line 181
    const/4 v2, 0x2

    const-string v3, "clear"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, p1, v2, v3}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->setRogue(Landroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/Object;)V

    .line 182
    const/4 v2, 0x3

    const-string v3, "presetblackapp"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, p1, v2, v3}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->setRogue(Landroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/Object;)V

    .line 183
    const-string v2, "SavingSettingUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the pkgname = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is exist!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static insertToDB(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 9
    .parameter "context"
    .parameter "uri"
    .parameter "packName"
    .parameter "mType"

    .prologue
    .line 626
    const/4 v6, 0x0

    .line 627
    .local v6, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 629
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "package_name=?"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v4, v1

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 631
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 632
    :cond_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 633
    .local v8, values:Landroid/content/ContentValues;
    const-string v1, "package_name"

    invoke-virtual {v8, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v1, "app_type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 635
    invoke-virtual {v0, p1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 636
    const-string v1, "SavingSettingUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertToDB "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " successfully!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_1
    if-eqz v6, :cond_2

    .line 642
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 645
    :cond_2
    :goto_0
    return-void

    .line 638
    :catch_0
    move-exception v7

    .line 639
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "SavingSettingUtil"

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 641
    if-eqz v6, :cond_2

    .line 642
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 641
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 642
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public static insertToSmartProviderDB(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 5
    .parameter "context"
    .parameter "uri"
    .parameter "packageName"
    .parameter "mType"

    .prologue
    .line 613
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 614
    .local v0, cValues:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 615
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 616
    .local v2, result:Landroid/net/Uri;
    const-string v3, "package_name"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string v3, "list_type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 618
    invoke-virtual {v1, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 619
    return-object v2
.end method

.method public static isScreenOn(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 702
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 703
    .local v0, powerManager:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    return v1
.end method

.method public static isSystemApp(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5
    .parameter "packageName"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 491
    const/4 v1, 0x0

    .line 493
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isTopActivity(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "pkgName"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .local v1, tasksInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 498
    .line 698
    :goto_0
    return v2

    :cond_0
    move v2, v4

    goto :goto_0
.end method

.method private static killAppsByPG(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 685
    .local p1, packages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.huawei.android.HwPowerManager.KILLAPPS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 686
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "packages"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 687
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 688
    return-void
.end method

.method public static logHighPowerApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "pkgName"
    .parameter "report"

    .prologue
    const/4 v3, 0x0

    .line 662
    const-string v1, "power"

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/huawei/android/hwpowermanager/util/DbmsHelper;->addLogToDropBox(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 663
    return-void
.end method

.method public static queryAllBootApps(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .parameter "mContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v5, 0x202

    .line 713
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 714
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 718
    .local v0, bootApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 722
    .local v1, connectApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 723
    return-object v0
.end method

.method public static queryBootUsrAndCustApps(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 14
    .parameter "mContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 745
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 746
    .local v12, pm:Landroid/content/pm/PackageManager;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 747
    .local v8, mBootUsrAndCustApps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    .line 748
    .local v4, info:Landroid/content/pm/ApplicationInfo;
    const/4 v11, 0x0

    .line 749
    .local v11, packageName:Ljava/lang/String;
    invoke-static {p0}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->queryAllBootApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    .line 750
    .local v6, mBootApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 751
    .local v9, mBootUsrApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 752
    .local v7, mBootCustApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->queryCustApps(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v10

    .line 753
    .local v10, mCustApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 755
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 756
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 757
    .local v5, item:Landroid/content/pm/ResolveInfo;
    iget-object v13, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v13, :cond_1

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 759
    .local v0, ci:Landroid/content/pm/ComponentInfo;
    :goto_1
    iget-object v11, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 762
    const/4 v13, 0x0

    :try_start_0
    invoke-virtual {v12, v11, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 766
    iget v13, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_2

    .line 768
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 769
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 757
    .end local v0           #ci:Landroid/content/pm/ComponentInfo;
    :cond_1
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_1

    .line 763
    .restart local v0       #ci:Landroid/content/pm/ComponentInfo;
    :catch_0
    move-exception v2

    .line 764
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_2

    .line 773
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 776
    .end local v0           #ci:Landroid/content/pm/ComponentInfo;
    .end local v5           #item:Landroid/content/pm/ResolveInfo;
    :cond_3
    const-string v13, "Cust"

    invoke-virtual {v8, v13, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    const-string v13, "Usr"

    invoke-virtual {v8, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    return-object v8
.end method

.method public static queryCustApps(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .parameter "mContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 731
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 732
    .local v2, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 733
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/16 v5, 0x2000

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 734
    .local v1, appcationsList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 735
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    sget-object v6, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->CUST_URL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 736
    const-string v5, "SavingSettingUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cust and third apps packageName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 740
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    :cond_1
    return-object v2
.end method

.method public static queryPackageNameFromForbiddenapps(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter "resolver"
    .parameter "tableUri"
    .parameter "projection"
    .parameter "selection"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 801
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 802
    .local v8, resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 804
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 805
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 806
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 807
    const-string v0, "package_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 810
    :catch_0
    move-exception v7

    .line 811
    .local v7, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "SavingSettingUtil"

    const-string v1, "Database exception!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 813
    if-eqz v6, :cond_0

    .line 814
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 817
    .end local v7           #ex:Landroid/database/sqlite/SQLiteException;
    :cond_0
    :goto_1
    return-object v8

    .line 813
    :cond_1
    if-eqz v6, :cond_0

    .line 814
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 813
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 814
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static removeCustimizedAppsFromDB(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 326
    .local v2, packageName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package_name = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, deleteCondition:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->PROTECTED_APPS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 329
    .end local v0           #deleteCondition:Ljava/lang/String;
    .end local v2           #packageName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static setPowerNotificationAlarmTime(Landroid/content/Context;J)V
    .locals 10
    .parameter "context"
    .parameter "timeInMillis"

    .prologue
    .line 508
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 509
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.POWER_STATISTIC"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 510
    .local v7, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    const/high16 v2, 0x1000

    invoke-static {p0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 512
    .local v6, sender:Landroid/app/PendingIntent;
    sget v1, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->count_frequency:I

    int-to-long v1, v1

    const-wide/32 v8, 0xea60

    mul-long v4, v1, v8

    .line 513
    .local v4, interval:J
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 515
    const/4 v1, 0x1

    add-long v2, p1, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 516
    return-void
.end method

.method public static setRogue(Landroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 5
    .parameter "resolver"
    .parameter "pkgname"
    .parameter "flag"
    .parameter "value"

    .prologue
    .line 122
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 124
    .local v0, updateValues:Landroid/content/ContentValues;
    packed-switch p2, :pswitch_data_0

    .line 134
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid segment flag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :pswitch_0
    const-string v2, "isrogue"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    :goto_0
    const-string v2, "content://com.huawei.android.batteryspriteprovider/rogueapps"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 137
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "pkgname = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 139
    return-void

    .line 127
    .end local v1           #uri:Landroid/net/Uri;
    :pswitch_1
    const-string v2, "ignore"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 129
    :pswitch_2
    const-string v2, "clear"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 131
    :pswitch_3
    const-string v2, "presetblackapp"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static toShortName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "original"

    .prologue
    .line 455
    if-nez p0, :cond_0

    .line 456
    const/4 v1, 0x0

    .line 465
    :goto_0
    return-object v1

    .line 459
    :cond_0
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "com."

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 460
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 461
    .local v0, lastIndex:I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, shortName:Ljava/lang/String;
    goto :goto_0

    .end local v0           #lastIndex:I
    .end local v1           #shortName:Ljava/lang/String;
    :cond_1
    move-object v1, p0

    .line 465
    goto :goto_0
.end method

.method public static updateAllSystemApp(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 256
    invoke-static {p0}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getCustimizedSysAppsFromCust(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 257
    .local v1, custItems:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getCustimizedSysAppsFromDB(Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v2

    .line 258
    .local v2, dbItems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2, v1}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getAddedCustimizedApps(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 259
    .local v0, added:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;>;"
    invoke-static {v2, v1}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getRemovedCustimizedApps(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 260
    .local v3, removed:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, v3}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->removeCustimizedAppsFromDB(Landroid/content/Context;Ljava/util/List;)V

    .line 261
    invoke-static {p0, v0}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->insertCustimizedAppsToDB(Landroid/content/Context;Ljava/util/List;)V

    .line 262
    return-void
.end method

.method public static updateProtectedAppsDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 8
    .parameter "context"
    .parameter "pkgName"
    .parameter "isProtected"

    .prologue
    .line 575
    const/4 v6, 0x0

    .line 577
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->PROTECTED_APPS_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "package_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "list_type"

    aput-object v4, v2, v3

    const-string v3, "package_name=?and list_type=1"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 581
    if-nez v6, :cond_1

    .line 603
    if-eqz v6, :cond_0

    .line 604
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 585
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 586
    sget-object v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->PROTECTED_APPS_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->insertToSmartProviderDB(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Landroid/net/Uri;

    .line 597
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getRogue(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 598
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    invoke-static {v1, p1, v2, v0}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->setRogue(Landroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 603
    :cond_3
    if-eqz v6, :cond_0

    .line 604
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 591
    :cond_4
    :try_start_2
    sget-object v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->PROTECTED_APPS_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->deleteFromSmartProviderDB(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 600
    :catch_0
    move-exception v7

    .line 601
    .local v7, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_3
    const-string v0, "SavingSettingUtil"

    const-string v1, "Database exception!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 603
    if-eqz v6, :cond_0

    .line 604
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 598
    .end local v7           #ex:Landroid/database/sqlite/SQLiteException;
    :cond_5
    const/4 v0, 0x1

    :try_start_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    goto :goto_2

    .line 603
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 604
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method
