.class public final Landroid/content/res/ZipFileCache;
.super Ljava/lang/Object;
.source "ZipFileCache.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final STATUS_NO_NEED_UPDATE:I = 0x1

.field public static final STATUS_UPDATED:I = 0x0

.field public static final STATUS_UPDATE_FAILED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ZipFileCache"

.field private static final sZipFileCacheMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/ZipFileCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLastModifyTime:J

.field private mPath:Ljava/lang/String;

.field private mZip:Ljava/lang/String;

.field private mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/res/ZipFileCache;->sZipFileCacheMaps:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .parameter "zip"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/content/res/ZipFileCache;->mLastModifyTime:J

    .line 48
    iput-object p1, p0, Landroid/content/res/ZipFileCache;->mPath:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Landroid/content/res/ZipFileCache;->mZip:Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Landroid/content/res/ZipFileCache;->openZipFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    const-string v0, "ZipFileCache"

    const-string v1, "init failed when open zip file."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    return-void
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 102
    sget-object v0, Landroid/content/res/ZipFileCache;->sZipFileCacheMaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 103
    return-void
.end method

.method private static closeInputStream(Ljava/io/InputStream;)V
    .locals 1
    .parameter "is"

    .prologue
    .line 158
    if-eqz p0, :cond_0

    .line 160
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private closeZipFile()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    .line 151
    :try_start_0
    iget-object v0, p0, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;
    .locals 7
    .parameter "path"
    .parameter "zip"

    .prologue
    const/4 v5, 0x0

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, key:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v3, v5

    .line 79
    :goto_0
    return-object v3

    .line 60
    :cond_0
    const/4 v2, 0x0

    .line 61
    .local v2, zipFileCache:Landroid/content/res/ZipFileCache;
    sget-object v6, Landroid/content/res/ZipFileCache;->sZipFileCacheMaps:Ljava/util/Map;

    monitor-enter v6

    .line 62
    :try_start_0
    sget-object v4, Landroid/content/res/ZipFileCache;->sZipFileCacheMaps:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 63
    new-instance v3, Landroid/content/res/ZipFileCache;

    invoke-direct {v3, p0, p1}, Landroid/content/res/ZipFileCache;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 64
    .end local v2           #zipFileCache:Landroid/content/res/ZipFileCache;
    .local v3, zipFileCache:Landroid/content/res/ZipFileCache;
    :try_start_1
    iget-object v4, v3, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    if-nez v4, :cond_1

    .line 65
    monitor-exit v6

    move-object v3, v5

    goto :goto_0

    .line 67
    :cond_1
    sget-object v4, Landroid/content/res/ZipFileCache;->sZipFileCacheMaps:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v4

    move-object v2, v3

    .end local v3           #zipFileCache:Landroid/content/res/ZipFileCache;
    .restart local v2       #zipFileCache:Landroid/content/res/ZipFileCache;
    :goto_1
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 71
    :cond_2
    :try_start_3
    sget-object v4, Landroid/content/res/ZipFileCache;->sZipFileCacheMaps:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/content/res/ZipFileCache;

    move-object v2, v0

    .line 73
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    if-eqz v2, :cond_3

    .line 75
    const/4 v4, -0x1

    invoke-virtual {v2}, Landroid/content/res/ZipFileCache;->checkUpdate()I

    move-result v6

    if-ne v4, v6, :cond_3

    move-object v3, v5

    .line 76
    goto :goto_0

    :cond_3
    move-object v3, v2

    .line 79
    goto :goto_0

    .line 73
    :catchall_1
    move-exception v4

    goto :goto_1
.end method

.method public static getCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;
    .locals 5
    .parameter "path"
    .parameter "zip"

    .prologue
    const/4 v2, 0x0

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, key:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    .line 97
    :goto_0
    return-object v1

    .line 87
    :cond_0
    sget-object v3, Landroid/content/res/ZipFileCache;->sZipFileCacheMaps:Ljava/util/Map;

    monitor-enter v3

    .line 88
    :try_start_0
    sget-object v4, Landroid/content/res/ZipFileCache;->sZipFileCacheMaps:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 89
    new-instance v1, Landroid/content/res/ZipFileCache;

    invoke-direct {v1, p0, p1}, Landroid/content/res/ZipFileCache;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .local v1, zipFileCache:Landroid/content/res/ZipFileCache;
    iget-object v4, v1, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    if-nez v4, :cond_1

    .line 91
    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    .line 93
    :cond_1
    sget-object v2, Landroid/content/res/ZipFileCache;->sZipFileCacheMaps:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    monitor-exit v3

    goto :goto_0

    .line 99
    .end local v1           #zipFileCache:Landroid/content/res/ZipFileCache;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 97
    :cond_2
    :try_start_1
    sget-object v2, Landroid/content/res/ZipFileCache;->sZipFileCacheMaps:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ZipFileCache;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_0
.end method

.method private openZipFile()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 129
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Landroid/content/res/ZipFileCache;->mPath:Ljava/lang/String;

    iget-object v5, p0, Landroid/content/res/ZipFileCache;->mZip:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/content/res/ZipFileCache;->mLastModifyTime:J

    .line 131
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v2, v3

    .line 141
    .end local v0           #file:Ljava/io/File;
    :goto_0
    return v2

    .line 134
    .restart local v0       #file:Ljava/io/File;
    :cond_1
    new-instance v4, Ljava/util/zip/ZipFile;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    iput-object v4, p0, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    .end local v0           #file:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 140
    .local v1, io:Ljava/io/IOException;
    invoke-direct {p0}, Landroid/content/res/ZipFileCache;->setEmpty()V

    move v2, v3

    .line 141
    goto :goto_0
.end method

.method private setEmpty()V
    .locals 2

    .prologue
    .line 167
    const-string v0, ""

    iput-object v0, p0, Landroid/content/res/ZipFileCache;->mPath:Ljava/lang/String;

    .line 168
    const-string v0, ""

    iput-object v0, p0, Landroid/content/res/ZipFileCache;->mZip:Ljava/lang/String;

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    .line 170
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/content/res/ZipFileCache;->mLastModifyTime:J

    .line 171
    return-void
.end method


# virtual methods
.method public checkUpdate()I
    .locals 5

    .prologue
    .line 105
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/content/res/ZipFileCache;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/content/res/ZipFileCache;->mZip:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 106
    .local v0, l:J
    iget-wide v2, p0, Landroid/content/res/ZipFileCache;->mLastModifyTime:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    .line 110
    invoke-direct {p0}, Landroid/content/res/ZipFileCache;->closeZipFile()V

    .line 111
    invoke-direct {p0}, Landroid/content/res/ZipFileCache;->openZipFile()Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    const-string v2, "ZipFileCache"

    const-string v3, "checkUpdate failed when open zip file."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v2, -0x1

    .line 120
    :goto_0
    return v2

    .line 115
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 120
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "fileName"

    .prologue
    const/4 v4, 0x0

    .line 182
    iget-object v5, p0, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    if-nez v5, :cond_0

    move-object v0, v4

    .line 198
    :goto_0
    return-object v0

    .line 185
    :cond_0
    const/4 v0, 0x0

    .line 186
    .local v0, bmp:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 188
    .local v3, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v5, p0, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 189
    .local v2, entry:Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_1

    .line 190
    iget-object v5, p0, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 191
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 196
    :cond_1
    invoke-static {v3}, Landroid/content/res/ZipFileCache;->closeInputStream(Ljava/io/InputStream;)V

    goto :goto_0

    .line 193
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v1

    .line 196
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v3}, Landroid/content/res/ZipFileCache;->closeInputStream(Ljava/io/InputStream;)V

    move-object v0, v4

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v3}, Landroid/content/res/ZipFileCache;->closeInputStream(Ljava/io/InputStream;)V

    throw v4
.end method

.method public getBitmapList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter "filePattern"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v2, bmpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    iget-object v8, p0, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    if-nez v8, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-object v2

    .line 214
    :cond_1
    const/4 v1, 0x0

    .line 215
    .local v1, bmp:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 216
    .local v7, zipEntry:Ljava/util/zip/ZipEntry;
    const/4 v6, 0x0

    .line 217
    .local v6, name:Ljava/lang/String;
    const/4 v5, 0x0

    .line 218
    .local v5, is:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 220
    .local v3, enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :try_start_0
    iget-object v8, p0, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 221
    if-eqz v3, :cond_0

    .line 224
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 225
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/util/zip/ZipEntry;

    move-object v7, v0

    .line 226
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 228
    invoke-virtual {v6, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_2

    const-string v8, ".png"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_2

    .line 229
    iget-object v8, p0, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v8, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 230
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 231
    invoke-static {v5}, Landroid/content/res/ZipFileCache;->closeInputStream(Ljava/io/InputStream;)V

    .line 232
    if-eqz v1, :cond_2

    .line 233
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 237
    :catch_0
    move-exception v4

    .line 238
    .local v4, ex:Ljava/lang/Exception;
    invoke-static {v5}, Landroid/content/res/ZipFileCache;->closeInputStream(Ljava/io/InputStream;)V

    .line 239
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public getDrawableEntry(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "res"
    .parameter "value"
    .parameter "fileName"

    .prologue
    const/4 v4, 0x0

    .line 254
    iget-object v5, p0, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    if-nez v5, :cond_0

    move-object v0, v4

    .line 272
    :goto_0
    return-object v0

    .line 258
    :cond_0
    const/4 v0, 0x0

    .line 259
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 261
    .local v3, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v5, p0, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, p3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 262
    .local v2, entry:Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_1

    .line 263
    iget-object v5, p0, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 264
    const/4 v5, 0x0

    invoke-static {p1, p2, v3, p3, v5}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 270
    :cond_1
    invoke-static {v3}, Landroid/content/res/ZipFileCache;->closeInputStream(Ljava/io/InputStream;)V

    goto :goto_0

    .line 267
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v1

    .line 270
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v3}, Landroid/content/res/ZipFileCache;->closeInputStream(Ljava/io/InputStream;)V

    move-object v0, v4

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v3}, Landroid/content/res/ZipFileCache;->closeInputStream(Ljava/io/InputStream;)V

    throw v4
.end method

.method public getInputStreamEntry(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .parameter "fileName"

    .prologue
    const/4 v3, 0x0

    .line 281
    iget-object v4, p0, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    if-nez v4, :cond_1

    move-object v2, v3

    .line 294
    :cond_0
    :goto_0
    return-object v2

    .line 285
    :cond_1
    const/4 v2, 0x0

    .line 287
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v4, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 288
    .local v1, entry:Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_0

    .line 289
    iget-object v4, p0, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v4, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 291
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move-object v2, v3

    .line 292
    goto :goto_0
.end method
