.class public Lcom/yatoooon/screenadaptation/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yatoooon/screenadaptation/e$b;
    }
.end annotation


# static fields
.field private static a:Lcom/yatoooon/screenadaptation/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Lcom/yatoooon/screenadaptation/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/yatoooon/screenadaptation/e;->a:Lcom/yatoooon/screenadaptation/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yatoooon/screenadaptation/e$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yatoooon/screenadaptation/e$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lcom/yatoooon/screenadaptation/e;->c(Landroid/content/Context;Lcom/yatoooon/screenadaptation/e$b;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/yatoooon/screenadaptation/e$b;)V
    .locals 9

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/16 v2, 0x80

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    :goto_0
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 22
    .line 23
    const-string v2, "designwidth"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 30
    .line 31
    const-string v2, "designdpi"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 38
    .line 39
    const-string v2, "fontsize"

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 46
    .line 47
    const-string v1, "unit"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    move-object v3, p1

    .line 54
    move-object v4, p0

    .line 55
    invoke-interface/range {v3 .. v8}, Lcom/yatoooon/screenadaptation/e$b;->a(Landroid/content/Context;IIFLjava/lang/String;)Lcom/yatoooon/screenadaptation/a;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    sput-object p0, Lcom/yatoooon/screenadaptation/e;->a:Lcom/yatoooon/screenadaptation/a;

    .line 60
    .line 61
    return-void
.end method
