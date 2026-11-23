.class Lcom/join/mgps/activity/UploadActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/common/http/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/UploadActivity;->syncUpLoadInfo(Landroid/content/Context;Lcom/papa/sim/statistic/UpLoadGameConfig;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/UploadActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/UploadActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/UploadActivity$a;->a:Lcom/join/mgps/activity/UploadActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->upLoadState()Lorg/androidannotations/api/sharedpreferences/i;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Integer;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    sget-object p1, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->upLoadState()Lorg/androidannotations/api/sharedpreferences/i;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/4 v0, -0x1

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p1, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    new-instance p1, Landroid/content/Intent;

    .line 39
    .line 40
    const-string v1, "upload"

    .line 41
    .line 42
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v1, "upload_result"

    .line 46
    .line 47
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity$a;->a:Lcom/join/mgps/activity/UploadActivity;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->upLoadState()Lorg/androidannotations/api/sharedpreferences/i;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Integer;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    sget-object p1, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->upLoadState()Lorg/androidannotations/api/sharedpreferences/i;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p1, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    sget-object p1, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->upLoadConfig()Lorg/androidannotations/api/sharedpreferences/p;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->i()V

    .line 45
    .line 46
    .line 47
    new-instance p1, Ljava/io/File;

    .line 48
    .line 49
    sget-object v1, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->upLoadFileName()Lorg/androidannotations/api/sharedpreferences/p;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Ljava/lang/String;

    .line 60
    .line 61
    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_0

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 71
    .line 72
    .line 73
    :cond_0
    sget-object p1, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->upLoadFileName()Lorg/androidannotations/api/sharedpreferences/p;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->i()V

    .line 80
    .line 81
    .line 82
    new-instance p1, Landroid/content/Intent;

    .line 83
    .line 84
    const-string v1, "upload"

    .line 85
    .line 86
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string v1, "upload_result"

    .line 90
    .line 91
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity$a;->a:Lcom/join/mgps/activity/UploadActivity;

    .line 95
    .line 96
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/join/mgps/activity/UploadActivity$a;->a:Lcom/join/mgps/activity/UploadActivity;

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/join/mgps/activity/UploadActivity;->showToast()V

    .line 102
    .line 103
    .line 104
    :cond_1
    return-void
.end method
