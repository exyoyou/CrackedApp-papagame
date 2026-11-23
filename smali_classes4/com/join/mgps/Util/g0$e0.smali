.class Lcom/join/mgps/Util/g0$e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/g0;->I(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/pref/PrefDef_;

.field final synthetic c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/join/mgps/Util/g0;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/g0;Lcom/join/mgps/pref/PrefDef_;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$prefDef",
            "val$downloadTask",
            "val$context",
            "val$from"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/g0$e0;->f:Lcom/join/mgps/Util/g0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/Util/g0$e0;->b:Lcom/join/mgps/pref/PrefDef_;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/Util/g0$e0;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/Util/g0$e0;->d:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/Util/g0$e0;->e:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/Util/g0$e0;->f:Lcom/join/mgps/Util/g0;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/Util/g0;->c(Lcom/join/mgps/Util/g0;)Lcom/join/android/app/common/dialog/c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    nop

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/Util/g0$e0;->b:Lcom/join/mgps/pref/PrefDef_;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->isNoShowAddShortcut()Lorg/androidannotations/api/sharedpreferences/p;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/Util/g0$e0;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, ","

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/join/mgps/Util/g0$e0;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/Util/g0$e0;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/Util/g0$e0;->b:Lcom/join/mgps/pref/PrefDef_;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isNoShowAddShortcut()Lorg/androidannotations/api/sharedpreferences/p;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/join/mgps/Util/g0$e0;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 85
    .line 86
    const/4 v0, 0x1

    .line 87
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setNotCheckAddShortcut(Z)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/join/mgps/Util/g0$e0;->d:Landroid/content/Context;

    .line 91
    .line 92
    iget-object v0, p0, Lcom/join/mgps/Util/g0$e0;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 93
    .line 94
    iget-object v1, p0, Lcom/join/mgps/Util/g0$e0;->e:Ljava/lang/String;

    .line 95
    .line 96
    const/4 v2, 0x0

    .line 97
    invoke-static {p1, v0, v2, v1}, Lcom/join/mgps/Util/UtilsMy;->m4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;ILjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/join/mgps/Util/g0$e0;->f:Lcom/join/mgps/Util/g0;

    .line 101
    .line 102
    invoke-static {p1}, Lcom/join/mgps/Util/g0;->c(Lcom/join/mgps/Util/g0;)Lcom/join/android/app/common/dialog/c;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-eqz p1, :cond_2

    .line 107
    .line 108
    :try_start_1
    iget-object p1, p0, Lcom/join/mgps/Util/g0$e0;->f:Lcom/join/mgps/Util/g0;

    .line 109
    .line 110
    invoke-static {p1}, Lcom/join/mgps/Util/g0;->c(Lcom/join/mgps/Util/g0;)Lcom/join/android/app/common/dialog/c;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    .line 116
    .line 117
    :catch_1
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/Util/g0$e0;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 118
    .line 119
    invoke-virtual {p1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setNotCheckAddShortcut(Z)V

    .line 120
    .line 121
    .line 122
    return-void
.end method
