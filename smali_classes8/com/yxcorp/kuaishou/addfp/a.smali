.class Lcom/yxcorp/kuaishou/addfp/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yxcorp/kuaishou/addfp/KWEGIDDFP;


# direct methods
.method constructor <init>(Lcom/yxcorp/kuaishou/addfp/KWEGIDDFP;)V
    .locals 0

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a;->a:Lcom/yxcorp/kuaishou/addfp/KWEGIDDFP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a;->a:Lcom/yxcorp/kuaishou/addfp/KWEGIDDFP;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/KWEGIDDFP;->access$100(Lcom/yxcorp/kuaishou/addfp/KWEGIDDFP;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a;->a:Lcom/yxcorp/kuaishou/addfp/KWEGIDDFP;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/KWEGIDDFP;->access$200(Lcom/yxcorp/kuaishou/addfp/KWEGIDDFP;)Lcom/yxcorp/kuaishou/addfp/ResponseDfpCallback;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "parameter error"

    .line 16
    .line 17
    const/4 v2, -0x3

    .line 18
    invoke-interface {v0, v2, v1}, Lcom/yxcorp/kuaishou/addfp/ResponseDfpCallback;->onFailed(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a;->a:Lcom/yxcorp/kuaishou/addfp/KWEGIDDFP;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/KWEGIDDFP;->access$100(Lcom/yxcorp/kuaishou/addfp/KWEGIDDFP;)Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    sget v0, Lcom/yxcorp/kuaishou/addfp/android/b/e;->c:I

    .line 28
    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    .line 31
    const/16 v1, 0x1c

    .line 32
    .line 33
    if-lt v0, v1, :cond_1

    .line 34
    .line 35
    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/android/b/e;->a()Z

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a;->a:Lcom/yxcorp/kuaishou/addfp/KWEGIDDFP;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/KWEGIDDFP;->access$100(Lcom/yxcorp/kuaishou/addfp/KWEGIDDFP;)Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v0, v1}, Lcom/yxcorp/kuaishou/addfp/KWEGIDDFP;->access$302(Lcom/yxcorp/kuaishou/addfp/KWEGIDDFP;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/android/a/c;->c()Lcom/yxcorp/kuaishou/addfp/android/a/c;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/a;->a:Lcom/yxcorp/kuaishou/addfp/KWEGIDDFP;

    .line 56
    .line 57
    invoke-static {v1}, Lcom/yxcorp/kuaishou/addfp/KWEGIDDFP;->access$300(Lcom/yxcorp/kuaishou/addfp/KWEGIDDFP;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Lcom/yxcorp/kuaishou/addfp/android/a/c;->b(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a;->a:Lcom/yxcorp/kuaishou/addfp/KWEGIDDFP;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/KWEGIDDFP;->access$200(Lcom/yxcorp/kuaishou/addfp/KWEGIDDFP;)Lcom/yxcorp/kuaishou/addfp/ResponseDfpCallback;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Lcom/yxcorp/kuaishou/addfp/KWEGIDDFP;->access$400(Lcom/yxcorp/kuaishou/addfp/KWEGIDDFP;Lcom/yxcorp/kuaishou/addfp/ResponseDfpCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    return-void
.end method
