.class public Lorg/ppsspp/ppsspp/ShortcutActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "PPSSPP"


# instance fields
.field private b:Lorg/ppsspp/ppsspp/m$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/ppsspp/ppsspp/ShortcutActivity$b;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lorg/ppsspp/ppsspp/ShortcutActivity$b;-><init>(Lorg/ppsspp/ppsspp/ShortcutActivity;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/ppsspp/ppsspp/ShortcutActivity;->b:Lorg/ppsspp/ppsspp/m$c;

    .line 10
    .line 11
    return-void
.end method

.method static synthetic a(Lorg/ppsspp/ppsspp/ShortcutActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/ppsspp/ppsspp/ShortcutActivity;->b(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lorg/ppsspp/ppsspp/PpssppActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/io/File;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "Shortcut URI: "

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    const-string v1, "org.ppsspp.ppsspp.Shortcuts"

    .line 38
    .line 39
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lorg/ppsspp/ppsspp/PpssppActivity;->CheckABIAndLoadLibrary()V

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lorg/ppsspp/ppsspp/ShortcutActivity;->queryGameName(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string v1, ""

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/ShortcutActivity;->c()V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .line 62
    .line 63
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v2, "android.intent.extra.shortcut.INTENT"

    .line 67
    .line 68
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    const-string v0, "android.intent.extra.shortcut.NAME"

    .line 72
    .line 73
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    sget p1, Lorg/ppsspp/ppsspp/R$drawable;->ic_launcher:I

    .line 77
    .line 78
    invoke-static {p0, p1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string v0, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 83
    .line 84
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    const/4 p1, -0x1

    .line 88
    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    new-instance v0, Lorg/ppsspp/ppsspp/ShortcutActivity$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/ppsspp/ppsspp/ShortcutActivity$a;-><init>(Lorg/ppsspp/ppsspp/ShortcutActivity;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7
    .line 8
    .line 9
    const-wide/16 v0, 0xbb8

    .line 10
    .line 11
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    :goto_0
    const/4 v0, -0x1

    .line 20
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static native queryGameName(Ljava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lorg/ppsspp/ppsspp/m;

    .line 5
    .line 6
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    invoke-static {p0}, Lcom/papa91/arc/util/StoreUtils;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lorg/ppsspp/ppsspp/ShortcutActivity;->b:Lorg/ppsspp/ppsspp/m$c;

    .line 16
    .line 17
    invoke-direct {p1, p0, v0, v1}, Lorg/ppsspp/ppsspp/m;-><init>(Landroid/app/Activity;Ljava/io/File;Lorg/ppsspp/ppsspp/m$c;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/ppsspp/ppsspp/m;->g()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
