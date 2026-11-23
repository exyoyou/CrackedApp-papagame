.class public final Lcom/xinzhu/overmind/shared/k$b;
.super Lcom/xinzhu/overmind/client/hook/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/shared/k;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOvermindLoadCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OvermindLoadCallback.kt\ncom/xinzhu/overmind/shared/OvermindLoadCallback$addLifecycleCallback$1\n+ 2 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n*L\n1#1,375:1\n39#2,12:376\n*S KotlinDebug\n*F\n+ 1 OvermindLoadCallback.kt\ncom/xinzhu/overmind/shared/OvermindLoadCallback$addLifecycleCallback$1\n*L\n189#1:376,12\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOvermindLoadCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OvermindLoadCallback.kt\ncom/xinzhu/overmind/shared/OvermindLoadCallback$addLifecycleCallback$1\n+ 2 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n*L\n1#1,375:1\n39#2,12:376\n*S KotlinDebug\n*F\n+ 1 OvermindLoadCallback.kt\ncom/xinzhu/overmind/shared/OvermindLoadCallback$addLifecycleCallback$1\n*L\n189#1:376,12\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/xinzhu/overmind/shared/k;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/shared/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/shared/k$b;->b:Lcom/xinzhu/overmind/shared/k;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V
    .locals 4

    .line 1
    const-string v0, "packageName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "processName"

    .line 7
    .line 8
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/xinzhu/overmind/shared/k$b;->b:Lcom/xinzhu/overmind/shared/k;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/xinzhu/overmind/shared/k;->e(Lcom/xinzhu/overmind/shared/k;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "afterApplicationOnCreate: pkg "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, ", processName "

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    if-eqz p3, :cond_0

    .line 38
    .line 39
    :try_start_0
    invoke-static {p3}, Lcom/xinzhu/overmind/shared/l;->a(Landroid/app/Application;)Landroid/content/SharedPreferences;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "editor"

    .line 48
    .line 49
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v2, "wfMainPkg"

    .line 53
    .line 54
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMainPkg()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 59
    .line 60
    .line 61
    const-string v2, "wfExtPkg"

    .line 62
    .line 63
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPluginPkg()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    .line 69
    .line 70
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    :catch_0
    :cond_0
    new-instance v1, Lcom/xinzhu/overmind/shared/k$b$a;

    .line 74
    .line 75
    iget-object v2, p0, Lcom/xinzhu/overmind/shared/k$b;->b:Lcom/xinzhu/overmind/shared/k;

    .line 76
    .line 77
    invoke-direct {v1, v2}, Lcom/xinzhu/overmind/shared/k$b$a;-><init>(Lcom/xinzhu/overmind/shared/k;)V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v2, v1}, Lcom/xinzhu/overmind/Overmind;->setActivityLifecycleCallback(Lcom/xinzhu/overmind/client/hook/delegate/a;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/xinzhu/overmind/shared/k$b;->b:Lcom/xinzhu/overmind/shared/k;

    .line 88
    .line 89
    invoke-virtual {v1, p1, p2, p3}, Lcom/xinzhu/overmind/shared/k;->n(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V

    .line 90
    .line 91
    .line 92
    :try_start_1
    new-instance p2, Landroid/os/Bundle;

    .line 93
    .line 94
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string p1, "com.join.android.app.mgsim.wufun.virtual.service.dbprovider"

    .line 101
    .line 102
    const-string p3, "statPoint"

    .line 103
    .line 104
    const/4 v0, 0x0

    .line 105
    invoke-static {p1, p3, v0, p2}, Lcom/xinzhu/overmind/shared/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catch_1
    move-exception p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 111
    .line 112
    .line 113
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/k$b;->b:Lcom/xinzhu/overmind/shared/k;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xinzhu/overmind/shared/k;->e(Lcom/xinzhu/overmind/shared/k;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "beforeApplicationOnCreate: pkg "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p1, ", processName "

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/xinzhu/overmind/shared/k$b;->b:Lcom/xinzhu/overmind/shared/k;

    .line 28
    .line 29
    invoke-virtual {p1, p3}, Lcom/xinzhu/overmind/shared/k;->k(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/xinzhu/overmind/shared/k$b;->b:Lcom/xinzhu/overmind/shared/k;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/xinzhu/overmind/shared/k;->j()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/xinzhu/overmind/shared/k$b;->b:Lcom/xinzhu/overmind/shared/k;

    .line 2
    .line 3
    invoke-static {p3}, Lcom/xinzhu/overmind/shared/k;->e(Lcom/xinzhu/overmind/shared/k;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v0, "beforeCreateApplication: pkg "

    .line 12
    .line 13
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p1, ", processName "

    .line 20
    .line 21
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    return-void
.end method
