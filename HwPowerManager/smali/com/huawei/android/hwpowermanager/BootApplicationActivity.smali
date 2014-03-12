.class public Lcom/huawei/android/hwpowermanager/BootApplicationActivity;
.super Landroid/app/ListActivity;
.source "BootApplicationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/hwpowermanager/BootApplicationActivity$CompareNum;,
        Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;,
        Lcom/huawei/android/hwpowermanager/BootApplicationActivity$ViewHolder;,
        Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    }
.end annotation


# static fields
.field private static FILE_CUST_PACKAGENAME:Ljava/lang/String;

.field static mForbiddenAppsUri:Landroid/net/Uri;

.field private static sAllBootPkgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private static sOperationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBootAppAdapter:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;

.field private mInvalidMenu:Landroid/view/MenuItem;

.field private mIschecked:Z

.field private mSelectAllSwitch:Landroid/widget/Switch;

.field private mValidMenu:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    .line 65
    const-string v0, "/data/cust/xml/hw_powersaving_packname.xml"

    sput-object v0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->FILE_CUST_PACKAGENAME:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x96

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sOperationList:Ljava/util/ArrayList;

    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mForbiddenAppsUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mBootAppAdapter:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mIschecked:Z

    .line 600
    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huawei/android/hwpowermanager/BootApplicationActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mIschecked:Z

    return v0
.end method

.method static synthetic access$102(Lcom/huawei/android/hwpowermanager/BootApplicationActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mIschecked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/huawei/android/hwpowermanager/BootApplicationActivity;)Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mBootAppAdapter:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huawei/android/hwpowermanager/BootApplicationActivity;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mSelectAllSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$400(Lcom/huawei/android/hwpowermanager/BootApplicationActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mValidMenu:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$500(Lcom/huawei/android/hwpowermanager/BootApplicationActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mInvalidMenu:Landroid/view/MenuItem;

    return-object v0
.end method

.method public static filterPackage(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 12
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 489
    .local p0, arraylist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;>;"
    const/4 v2, 0x0

    .line 490
    .local v2, fin:Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 492
    .local v8, packname:Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v10, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->FILE_CUST_PACKAGENAME:Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 493
    .local v0, custPackageNameFile:Ljava/io/File;
    const/4 v9, 0x0

    .line 494
    .local v9, xrp:Lorg/xmlpull/v1/XmlPullParser;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 495
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    .end local v2           #fin:Ljava/io/FileInputStream;
    .local v3, fin:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 497
    const/4 v10, 0x0

    invoke-interface {v9, v3, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object v2, v3

    .line 501
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v2       #fin:Ljava/io/FileInputStream;
    :goto_0
    :try_start_2
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_5

    .line 502
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 503
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 504
    .local v6, name:Ljava/lang/String;
    const-string v10, "package"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 505
    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 506
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 507
    .local v5, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;>;"
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 508
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;

    .line 509
    .local v4, item:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    iget-object v7, v4, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mPkgName:Ljava/lang/String;

    .line 511
    .local v7, pName:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v7, p1}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->isSystemApp(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 512
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 520
    .end local v0           #custPackageNameFile:Ljava/io/File;
    .end local v4           #item:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    .end local v5           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;>;"
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #pName:Ljava/lang/String;
    .end local v9           #xrp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v1

    .line 521
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 523
    if-eqz v2, :cond_1

    .line 525
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 531
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    :goto_3
    return-void

    .line 499
    .restart local v0       #custPackageNameFile:Ljava/io/File;
    .restart local v9       #xrp:Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f040001

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    goto :goto_0

    .line 518
    :cond_3
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 523
    .end local v0           #custPackageNameFile:Ljava/io/File;
    .end local v9           #xrp:Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v2, :cond_4

    .line 525
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 528
    :cond_4
    :goto_5
    throw v10

    .line 523
    .restart local v0       #custPackageNameFile:Ljava/io/File;
    .restart local v9       #xrp:Lorg/xmlpull/v1/XmlPullParser;
    :cond_5
    if-eqz v2, :cond_1

    .line 525
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 526
    :catch_1
    move-exception v1

    .line 527
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 526
    .end local v0           #custPackageNameFile:Ljava/io/File;
    .end local v9           #xrp:Lorg/xmlpull/v1/XmlPullParser;
    .local v1, e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 527
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 526
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 527
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 523
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #fin:Ljava/io/FileInputStream;
    .restart local v0       #custPackageNameFile:Ljava/io/File;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    .restart local v9       #xrp:Lorg/xmlpull/v1/XmlPullParser;
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v2       #fin:Ljava/io/FileInputStream;
    goto :goto_4

    .line 520
    .end local v2           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v2       #fin:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private getAppsFromUri(Landroid/net/Uri;)Ljava/util/Set;
    .locals 9
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 719
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 721
    .local v6, apps:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 723
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 724
    if-eqz v7, :cond_1

    .line 725
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 726
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 727
    const-string v0, "package_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 730
    .local v8, mPkgNames:Ljava/lang/String;
    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 732
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 735
    .end local v8           #mPkgNames:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 737
    if-eqz v7, :cond_0

    .line 738
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 742
    :cond_0
    :goto_1
    return-object v6

    .line 737
    :cond_1
    if-eqz v7, :cond_0

    .line 738
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 737
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 738
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static initStarupForbiddenAppDB(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 316
    const-string v5, "appDatabase"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 318
    .local v4, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 321
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "isCustSavedshared"

    const-string v6, "custNoSave"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, isCustSaved:Ljava/lang/String;
    const-string v5, "isCustForbidden"

    const-string v6, "custNoForbidden"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, isCustForbidden:Ljava/lang/String;
    const-string v5, "BootAppListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCustForbidden is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v5, "custNoSave"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 330
    invoke-static {p0}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->delFromForbiddenapps(Landroid/content/Context;)V

    .line 331
    const-string v5, "isCustSavedshared"

    const-string v6, "custSave"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 332
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 335
    :cond_0
    const-string v5, "custNoForbidden"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 336
    invoke-static {p0}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->addAppsToForbidden(Landroid/content/Context;)V

    .line 337
    const-string v5, "isCustForbidden"

    const-string v6, "custForbidden"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 338
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 341
    :cond_1
    const-string v5, "savedForbidDatabase"

    const-string v6, "forbidNoSave"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 344
    .local v3, isSaved:Ljava/lang/String;
    const-string v5, "forbidSave"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 353
    :goto_0
    return-void

    .line 351
    :cond_2
    const-string v5, "savedForbidDatabase"

    const-string v6, "forbidSave"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 352
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private invalidAllItem()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 809
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->changeSwitchStatus(Ljava/lang/Boolean;)V

    .line 810
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mValidMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 811
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mInvalidMenu:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 812
    return-void
.end method

.method private validAllItem()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 803
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->changeSwitchStatus(Ljava/lang/Boolean;)V

    .line 804
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mValidMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 805
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mInvalidMenu:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 806
    return-void
.end method


# virtual methods
.method public changeSwitchStatus(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "switchStatus"

    .prologue
    .line 559
    sget-object v2, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 560
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, ifor:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 561
    sget-object v2, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v2, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mNewEnable:Z

    .line 560
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 563
    :cond_0
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mBootAppAdapter:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;

    invoke-virtual {v2}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;->notifyDataSetChanged()V

    .line 564
    return-void
.end method

.method public contentResolverOnDestory()V
    .locals 2

    .prologue
    .line 576
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$2;

    invoke-direct {v1, p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$2;-><init>(Lcom/huawei/android/hwpowermanager/BootApplicationActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 596
    .local v0, contentResolverOnDestory:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 597
    return-void
.end method

.method public fetchInstalledApps(Landroid/content/Context;)V
    .locals 20
    .parameter "context"

    .prologue
    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    new-instance v18, Landroid/content/Intent;

    const-string v19, "android.intent.action.BOOT_COMPLETED"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x202

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 627
    .local v3, bootApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    new-instance v18, Landroid/content/Intent;

    const-string v19, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x202

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 632
    .local v5, connectApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 634
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .line 635
    .local v6, count:I
    const-string v17, "BootAppListActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "all count="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    sget-object v17, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mForbiddenAppsUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->getAppsFromUri(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object v8

    .line 640
    .local v8, forbiddenApps:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->queryCustApps(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 643
    .local v2, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 645
    .local v9, found:Z
    sget-object v18, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    monitor-enter v18

    .line 646
    :try_start_0
    sget-object v17, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 647
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v6, :cond_7

    .line 650
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 651
    .local v12, item:Landroid/content/pm/ResolveInfo;
    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    iget-object v4, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 653
    .local v4, ci:Landroid/content/pm/ComponentInfo;
    :goto_1
    iget-object v15, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 655
    .local v15, packageName:Ljava/lang/String;
    const/4 v14, 0x0

    .line 656
    .local v14, one:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    const/16 v16, 0x0

    .local v16, t:I
    :goto_2
    sget-object v17, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 657
    sget-object v17, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #one:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    check-cast v14, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;

    .line 658
    .restart local v14       #one:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    iget-object v0, v14, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mPkgName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 659
    const/4 v9, 0x1

    .line 663
    :cond_0
    if-eqz v9, :cond_5

    .line 664
    iget-object v0, v14, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mClsName:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v4, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    :goto_3
    invoke-interface {v8, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 700
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v14, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mNewEnable:Z

    .line 702
    :cond_1
    const/4 v9, 0x0

    .line 649
    :cond_2
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 647
    .end local v4           #ci:Landroid/content/pm/ComponentInfo;
    .end local v10           #i:I
    .end local v12           #item:Landroid/content/pm/ResolveInfo;
    .end local v14           #one:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    .end local v15           #packageName:Ljava/lang/String;
    .end local v16           #t:I
    :catchall_0
    move-exception v17

    :try_start_1
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v17

    .line 651
    .restart local v10       #i:I
    .restart local v12       #item:Landroid/content/pm/ResolveInfo;
    :cond_3
    iget-object v4, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_1

    .line 656
    .restart local v4       #ci:Landroid/content/pm/ComponentInfo;
    .restart local v14       #one:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    .restart local v15       #packageName:Ljava/lang/String;
    .restart local v16       #t:I
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 666
    :cond_5
    new-instance v14, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;

    .end local v14           #one:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    invoke-direct {v14}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;-><init>()V

    .line 667
    .restart local v14       #one:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    iput-object v15, v14, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mPkgName:Ljava/lang/String;

    .line 668
    iget-object v0, v14, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mClsName:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v4, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 670
    iget-object v0, v4, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mLable:Ljava/lang/CharSequence;

    .line 671
    const/4 v11, 0x0

    .line 672
    .local v11, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 674
    .local v13, mPm:Landroid/content/pm/PackageManager;
    const/16 v17, 0x0

    :try_start_2
    move/from16 v0, v17

    invoke-virtual {v13, v15, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v11

    .line 679
    iget v0, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_6

    .line 681
    const/16 v17, 0x2

    move/from16 v0, v17

    iput v0, v14, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mType:I

    .line 683
    iget-object v0, v14, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mPkgName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 691
    :goto_5
    const-string v17, "BootAppListActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "pos="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", packageName="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    sget-object v18, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    monitor-enter v18

    .line 694
    :try_start_3
    sget-object v17, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    monitor-exit v18

    goto/16 :goto_3

    :catchall_1
    move-exception v17

    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v17

    .line 675
    :catch_0
    move-exception v7

    .line 676
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v9, 0x0

    .line 677
    goto/16 :goto_4

    .line 689
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v14, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mType:I

    goto :goto_5

    .line 707
    .end local v4           #ci:Landroid/content/pm/ComponentInfo;
    .end local v11           #info:Landroid/content/pm/ApplicationInfo;
    .end local v12           #item:Landroid/content/pm/ResolveInfo;
    .end local v13           #mPm:Landroid/content/pm/PackageManager;
    .end local v14           #one:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    .end local v15           #packageName:Ljava/lang/String;
    .end local v16           #t:I
    :cond_7
    sget-object v18, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    monitor-enter v18

    .line 708
    :try_start_4
    sget-object v17, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->filterPackage(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 709
    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 714
    sget-object v17, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    new-instance v18, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$CompareNum;

    invoke-direct/range {v18 .. v18}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$CompareNum;-><init>()V

    invoke-static/range {v17 .. v18}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 715
    return-void

    .line 709
    :catchall_2
    move-exception v17

    :try_start_5
    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v17
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 791
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->contentResolverOnDestory()V

    .line 792
    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    .line 793
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 310
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 98
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 102
    const-string v2, "content://com.huawei.android.batteryspriteprovider"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 103
    .local v0, baseUri:Landroid/net/Uri;
    const-string v2, "forbiddenapps"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mForbiddenAppsUri:Landroid/net/Uri;

    .line 106
    invoke-virtual {p0, p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->fetchInstalledApps(Landroid/content/Context;)V

    .line 108
    const v2, 0x7f030004

    invoke-virtual {p0, v2}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->setContentView(I)V

    .line 110
    new-instance v2, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;

    invoke-direct {v2, p0, p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;-><init>(Lcom/huawei/android/hwpowermanager/BootApplicationActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mBootAppAdapter:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;

    .line 111
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mBootAppAdapter:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;

    invoke-virtual {p0, v2}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    const v2, 0x7f0b0005

    invoke-virtual {p0, v2}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 116
    .local v1, mSettingTitle:Landroid/widget/TextView;
    const v2, 0x7f0b0010

    invoke-virtual {p0, v2}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mSelectAllSwitch:Landroid/widget/Switch;

    .line 119
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mBootAppAdapter:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;

    invoke-virtual {v2}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mSelectAllSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setVisibility(I)V

    .line 126
    :goto_0
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mSelectAllSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mBootAppAdapter:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;

    invoke-virtual {v2}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;->allUnchecked()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 128
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 130
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mSelectAllSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$1;

    invoke-direct {v3, p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$1;-><init>(Lcom/huawei/android/hwpowermanager/BootApplicationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 144
    return-void

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mSelectAllSwitch:Landroid/widget/Switch;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v2, v4

    .line 126
    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 751
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 753
    const v0, 0x7f090037

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 755
    const v0, 0x7f090036

    invoke-interface {p1, v1, v3, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 759
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mValidMenu:Landroid/view/MenuItem;

    .line 760
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mInvalidMenu:Landroid/view/MenuItem;

    .line 762
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mValidMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 763
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mInvalidMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 765
    return v2
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 301
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 302
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 307
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    .line 771
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 785
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 773
    :sswitch_0
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->invalidAllItem()V

    goto :goto_1

    .line 776
    :sswitch_1
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->validAllItem()V

    goto :goto_1

    .line 779
    :sswitch_2
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->contentResolverOnDestory()V

    .line 780
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->finish()V

    goto :goto_0

    .line 771
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 296
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 297
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->contentResolverOnDestory()V

    .line 799
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 800
    return-void
.end method
