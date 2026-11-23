.class public Lcom/byazt/bog/c$ve$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3a7,
        0x967
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/bog/c$ve;->call(Lcom/byazt/bog/c$tt;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/bog/c$tt;

.field public final synthetic tt:I

.field public final synthetic ve:Lcom/byazt/bog/c$ve;


# direct methods
.method public constructor <init>(Lcom/byazt/bog/c$ve;Lcom/byazt/bog/c$tt;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/bog/c$ve$7;->ve:Lcom/byazt/bog/c$ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/bog/c$ve$7;->c:Lcom/byazt/bog/c$tt;

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/bog/c$ve$7;->tt:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    const-string v0, "_tt_ad_sdk_"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/byazt/bog/c$ve$7;->ve:Lcom/byazt/bog/c$ve;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/byazt/bog/c$ve;->c(Lcom/byazt/bog/c$ve;)Lcom/bykv/vk/openvk/api/proto/Manager;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/byazt/bog/c$ve$7;->c:Lcom/byazt/bog/c$tt;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/byazt/bog/c$ve$7;->ve:Lcom/byazt/bog/c$ve;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/byazt/bog/c$ve;->c(Lcom/byazt/bog/c$ve;)Lcom/bykv/vk/openvk/api/proto/Manager;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v1, v2}, Lcom/byazt/bog/c$tt;->c(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "Not ready, no manager: "

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget v2, p0, Lcom/byazt/bog/c$ve$7;->tt:I

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Lcom/byazt/bog/a;->uj(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception v1

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v3, "Unexpected manager call error: "

    .line 47
    .line 48
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v0, v2}, Lcom/byazt/bog/a;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/byazt/bog/c$ve$7;->ve:Lcom/byazt/bog/c$ve;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/byazt/bog/c$ve;->c(Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
