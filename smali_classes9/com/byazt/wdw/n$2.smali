.class public Lcom/byazt/wdw/n$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26d,
        0x202
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wdw/n;->uj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/wdw/n;


# direct methods
.method public constructor <init>(Lcom/byazt/wdw/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wdw/n$2;->c:Lcom/byazt/wdw/n;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wdw/n$2;->c:Lcom/byazt/wdw/n;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/wdw/n;->c(Lcom/byazt/wdw/n;)Landroid/widget/Toast;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/wdw/n$2;->c:Lcom/byazt/wdw/n;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/wdw/n;->c(Lcom/byazt/wdw/n;)Landroid/widget/Toast;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/wdw/n$2;->c:Lcom/byazt/wdw/n;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/byazt/wdw/n;->sp(Lcom/byazt/wdw/n;)Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "\u5373\u5c06\u8df3\u8f6c\u5fae\u4fe1..."

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    const/16 v4, 0x11

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v6, 0x0

    .line 31
    invoke-static/range {v1 .. v6}, Lcom/byazt/nr/h;->c(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/widget/Toast;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Lcom/byazt/wdw/n;->c(Lcom/byazt/wdw/n;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/byazt/wdw/n$2;->c:Lcom/byazt/wdw/n;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/byazt/wdw/n;->c(Lcom/byazt/wdw/n;)Landroid/widget/Toast;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v2, "toast error:"

    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
