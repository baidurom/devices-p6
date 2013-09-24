.class public Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;
.super Ljava/lang/Object;
.source "HwThemeUnlockScreenWallpaper.java"


# static fields
.field private static sCachedWallPaper:Landroid/graphics/drawable/Drawable;

.field private static sCachedWallPaperName:Ljava/lang/String;

.field private static sInstance:Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;


# instance fields
.field private mLayout:Ljava/lang/String;

.field private mStyle:Ljava/lang/String;

.field private mWallpaper:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    sput-object v0, Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;->sInstance:Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;

    .line 36
    sput-object v0, Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;->sCachedWallPaper:Landroid/graphics/drawable/Drawable;

    .line 37
    const-string v0, ""

    sput-object v0, Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;->sCachedWallPaperName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;->sInstance:Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;->sInstance:Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;

    .line 55
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;->sInstance:Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;->sInstance:Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;

    .line 48
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;->sInstance:Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;

    return-object v0
.end method

.method public static getLayoutXML(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 5
    .parameter "path"

    .prologue
    .line 107
    const/4 v2, 0x0

    .line 108
    .local v2, document:Lorg/w3c/dom/Document;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 110
    .local v1, builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 111
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 121
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    :goto_0
    return-object v2

    .line 112
    :catch_0
    move-exception v3

    .line 113
    .local v3, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 114
    .end local v3           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v3

    .line 115
    .local v3, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 116
    .end local v3           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v3

    .line 117
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 118
    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 119
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    .line 125
    invoke-static {}, Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;->getInstance()Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;

    move-result-object v2

    .line 126
    .local v2, themeParser:Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;
    const-string v5, "/data/skin/unlock/theme.xml"

    invoke-virtual {v2, v5}, Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;->parseThemeFromXml(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;->getWallpaperPath()Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, wallpaper:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 129
    :cond_0
    const-string v4, "unlock_wallpaper_0.jpg"

    .line 131
    :cond_1
    const/4 v0, 0x0

    .line 132
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 134
    new-instance v1, Ljava/io/File;

    const-string v5, "/data/skin/wallpaper/"

    invoke-direct {v1, v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/data/skin/wallpaper/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, wallPaperName:Ljava/lang/String;
    sget-object v5, Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;->sCachedWallPaperName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;->sCachedWallPaper:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    .line 138
    sget-object v0, Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;->sCachedWallPaper:Landroid/graphics/drawable/Drawable;

    .line 150
    .end local v1           #file:Ljava/io/File;
    .end local v3           #wallPaperName:Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;->clear()V

    .line 151
    return-object v0

    .line 140
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #wallPaperName:Ljava/lang/String;
    :cond_3
    sput-object v3, Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;->sCachedWallPaperName:Ljava/lang/String;

    .line 141
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/skin/wallpaper/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 142
    sput-object v0, Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;->sCachedWallPaper:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public getLayout()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;->mLayout:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;->mStyle:Ljava/lang/String;

    return-object v0
.end method

.method public getWallpaperPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;->mWallpaper:Ljava/lang/String;

    return-object v0
.end method

.method public parseThemeFromXml(Ljava/lang/String;)V
    .locals 11
    .parameter "filePath"

    .prologue
    .line 59
    invoke-static {p1}, Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;->getLayoutXML(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 61
    .local v1, document:Lorg/w3c/dom/Document;
    if-nez v1, :cond_1

    .line 90
    :cond_0
    return-void

    .line 65
    :cond_1
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    .line 66
    .local v8, rootElement:Lorg/w3c/dom/Element;
    if-eqz v8, :cond_0

    .line 69
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 71
    .local v5, itemNodes:Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v2, v10, :cond_0

    .line 72
    invoke-interface {v5, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 73
    .local v4, itemNode:Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, itemName:Ljava/lang/String;
    const-string v10, "item"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 75
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 76
    .local v0, attrs:Lorg/w3c/dom/NamedNodeMap;
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v10

    if-ge v6, v10, :cond_5

    .line 77
    invoke-interface {v0, v6}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    .line 78
    .local v7, name:Ljava/lang/String;
    invoke-interface {v0, v6}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 79
    .local v9, value:Ljava/lang/String;
    const-string v10, "style"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 80
    iput-object v9, p0, Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;->mStyle:Ljava/lang/String;

    .line 76
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 81
    :cond_3
    const-string v10, "wallpaper"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 82
    iput-object v9, p0, Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;->mWallpaper:Ljava/lang/String;

    goto :goto_2

    .line 83
    :cond_4
    const-string v10, "layout"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 84
    iput-object v9, p0, Lcom/android/internal/policy/impl/HwThemeUnlockScreenWallpaper;->mLayout:Ljava/lang/String;

    goto :goto_2

    .line 71
    .end local v0           #attrs:Lorg/w3c/dom/NamedNodeMap;
    .end local v6           #j:I
    .end local v7           #name:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
