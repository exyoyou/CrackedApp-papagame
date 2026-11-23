.class public Lcom/aggmoread/sdk/z/a/u/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/a/u/u$f;
    }
.end annotation


# instance fields
.field private a:Lcom/aggmoread/sdk/z/a/u/o;

.field private b:Landroid/app/DownloadManager;

.field private c:J

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/aggmoread/sdk/z/a/u/r;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/aggmoread/sdk/z/a/u/u$f;

.field private k:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/aggmoread/sdk/z/a/u/u$f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/u/u;->h:Ljava/lang/String;

    sget-object v0, Lcom/aggmoread/sdk/z/a/u/u$f;->a:Lcom/aggmoread/sdk/z/a/u/u$f;

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/u;->k:Landroid/content/Context;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/u/u;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/aggmoread/sdk/z/a/u/u;->i:Ljava/lang/String;

    iput-object p4, p0, Lcom/aggmoread/sdk/z/a/u/u;->j:Lcom/aggmoread/sdk/z/a/u/u$f;

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/u/u;)Lcom/aggmoread/sdk/z/a/u/o;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/u/u;->a:Lcom/aggmoread/sdk/z/a/u/o;

    return-object p0
.end method

.method private a()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/u;->g:Lcom/aggmoread/sdk/z/a/u/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/u/u;->g:Lcom/aggmoread/sdk/z/a/u/r;

    :cond_0
    return-void
.end method

.method private a(J)V
    .locals 3

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/aggmoread/sdk/z/a/u/u$e;

    invoke-direct {v1, p0, p1, p2}, Lcom/aggmoread/sdk/z/a/u/u$e;-><init>(Lcom/aggmoread/sdk/z/a/u/u;J)V

    iput-object v1, p0, Lcom/aggmoread/sdk/z/a/u/u;->d:Landroid/content/BroadcastReceiver;

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/u/u;->k:Landroid/content/Context;

    invoke-static {}, Lcom/aggmoread/sdk/z/a/m/p;->a()Landroid/os/Handler;

    move-result-object p2

    const-string v2, "android.intent.permission.DOWNLOAD_COMPLETE"

    invoke-virtual {p1, v1, v0, v2, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 0

    .line 5
    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 2

    .line 7
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/u/u;->f()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/u;->k:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/u/u;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/a/u/u;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .line 9
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/u/u;->k:Landroid/content/Context;

    const-string v2, "download"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    iput-object v1, p0, Lcom/aggmoread/sdk/z/a/u/u;->b:Landroid/app/DownloadManager;

    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-direct {v1, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    const-string v0, "download..."

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/u;->k:Landroid/content/Context;

    const-string v2, "\u6b63\u5728\u4e0b\u8f7dAPP"

    invoke-static {v0, v2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {v1, p1}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    sget-object p1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".apk"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/u/u;->b:Landroid/app/DownloadManager;

    invoke-virtual {p1, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aggmoread/sdk/z/a/u/u;->c:J

    invoke-direct {p0, v0, v1}, Lcom/aggmoread/sdk/z/a/u/u;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/a/u/u;)Lcom/aggmoread/sdk/z/a/u/u$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/u/u;->j:Lcom/aggmoread/sdk/z/a/u/u$f;

    return-object p0
.end method

.method static synthetic c(Lcom/aggmoread/sdk/z/a/u/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/u/u;->a()V

    return-void
.end method

.method private d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/u;->b:Landroid/app/DownloadManager;

    iget-wide v1, p0, Lcom/aggmoread/sdk/z/a/u/u;->c:J

    invoke-virtual {v0, v1, v2}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/u;->k:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/aggmoread/sdk/z/a/u/u;->a(Landroid/net/Uri;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/aggmoread/sdk/z/a/u/u;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/u/u;->g()V

    return-void
.end method

.method static synthetic e(Lcom/aggmoread/sdk/z/a/u/u;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/u/u;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method private f()Ljava/io/File;
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/aggmoread/sdk/z/a/u/u;->c:J

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [J

    iget-wide v2, p0, Lcom/aggmoread/sdk/z/a/u/u;->c:J

    const/4 v5, 0x0

    aput-wide v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Query;->setFilterByStatus(I)Landroid/app/DownloadManager$Query;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/u/u;->b:Landroid/app/DownloadManager;

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "local_uri"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v2

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v4
.end method

.method static synthetic f(Lcom/aggmoread/sdk/z/a/u/u;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/u/u;->d()V

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/u;->j:Lcom/aggmoread/sdk/z/a/u/u$f;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/u/u$f;->canSkip()Z

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/u;->f:Landroid/widget/TextView;

    const-string v1, "\u00d7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/u;->f:Landroid/widget/TextView;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/u;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/aggmoread/sdk/z/a/u/u$b;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/a/u/u$b;-><init>(Lcom/aggmoread/sdk/z/a/u/u;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 9

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/u/u;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v5, p0, Lcom/aggmoread/sdk/z/a/u/u;->e:Landroid/widget/LinearLayout;

    const-string v6, "#dddddd"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v5, p0, Lcom/aggmoread/sdk/z/a/u/u;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/aggmoread/sdk/z/a/u/u;->f:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/aggmoread/sdk/z/a/u/u;->f:Landroid/widget/TextView;

    const/16 v7, 0x8

    const/16 v8, 0x1e

    invoke-virtual {v6, v8, v7, v8, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v6, p0, Lcom/aggmoread/sdk/z/a/u/u;->f:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/aggmoread/sdk/z/a/u/u;->f:Landroid/widget/TextView;

    const-string v6, "#FFFFFF"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/aggmoread/sdk/z/a/u/u;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    iput v4, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v2, v2, v8, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/u/u;->h:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const-string v1, "END"

    invoke-static {v1}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/aggmoread/sdk/z/a/u/o;

    invoke-direct {v0, p1}, Lcom/aggmoread/sdk/z/a/u/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/u/u;->a:Lcom/aggmoread/sdk/z/a/u/o;

    new-instance p1, Lcom/aggmoread/sdk/z/a/u/u$c;

    invoke-direct {p1, p0}, Lcom/aggmoread/sdk/z/a/u/u$c;-><init>(Lcom/aggmoread/sdk/z/a/u/u;)V

    invoke-virtual {v0, p1}, Lcom/aggmoread/sdk/z/a/u/o;->a(Lcom/aggmoread/sdk/z/a/u/o$d;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/u/u;->a:Lcom/aggmoread/sdk/z/a/u/o;

    invoke-virtual {p1, v5}, Lcom/aggmoread/sdk/z/a/u/o;->a(Landroid/widget/TextView;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/u;->a:Lcom/aggmoread/sdk/z/a/u/o;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/u/u;->e:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/u;->a:Lcom/aggmoread/sdk/z/a/u/o;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Lcom/aggmoread/sdk/z/a/u/r;

    new-instance v2, Lcom/aggmoread/sdk/z/a/u/u$d;

    invoke-direct {v2, p0}, Lcom/aggmoread/sdk/z/a/u/u$d;-><init>(Lcom/aggmoread/sdk/z/a/u/u;)V

    const-wide/16 v3, 0xbb8

    const-wide/16 v5, 0x3e8

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/aggmoread/sdk/z/a/u/r;-><init>(Lcom/aggmoread/sdk/z/a/u/r$a;JJ)V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/u;->g:Lcom/aggmoread/sdk/z/a/u/r;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/u/u;->e:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public a(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1

    .line 6
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestCode "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", result = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "JHAPIHTAG"

    invoke-static {v0, p4}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const p4, 0x189fd

    if-ne p2, p4, :cond_0

    const/4 p2, -0x1

    if-ne p3, p2, :cond_0

    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/a/u/u;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/u;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/u/u;->k:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/u/u;->a:Lcom/aggmoread/sdk/z/a/u/o;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, "text/html"

    const-string v6, "utf-8"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/u;->a:Lcom/aggmoread/sdk/z/a/u/o;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/u/u;->a:Lcom/aggmoread/sdk/z/a/u/o;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/u;->a:Lcom/aggmoread/sdk/z/a/u/o;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/u;->a:Lcom/aggmoread/sdk/z/a/u/o;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/u/u;->a:Lcom/aggmoread/sdk/z/a/u/o;

    :cond_1
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 2

    .line 3
    const-string v0, "JHAPIHTAG"

    const-string v1, "onStop "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/a/u/u;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/u;->a:Lcom/aggmoread/sdk/z/a/u/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/u;->a:Lcom/aggmoread/sdk/z/a/u/o;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/u;->i:Ljava/lang/String;

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/u;->i:Ljava/lang/String;

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "android.intent.action.VIEW"

    :try_start_1
    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/u/u;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/u/u;->k:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/u;->j:Lcom/aggmoread/sdk/z/a/u/u$f;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/u/u$f;->onClose()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/u;->a:Lcom/aggmoread/sdk/z/a/u/o;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/u/u;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/u;->j:Lcom/aggmoread/sdk/z/a/u/u$f;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/u/u$f;->onShow()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/u/u;->g()V

    :goto_2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/u;->a:Lcom/aggmoread/sdk/z/a/u/o;

    new-instance v1, Lcom/aggmoread/sdk/z/a/u/u$a;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/a/u/u$a;-><init>(Lcom/aggmoread/sdk/z/a/u/u;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method
