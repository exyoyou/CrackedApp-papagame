.class public Lcom/byazt/fcd/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/rpt/tt$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x184,
        0xfe
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/fcd/a;->rl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/fcd/a;


# direct methods
.method public constructor <init>(Lcom/byazt/fcd/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/fcd/a$2;->c:Lcom/byazt/fcd/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/app/Dialog;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/fcd/a$2;->c:Lcom/byazt/fcd/a;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/fcd/a;->c(Lcom/byazt/fcd/a;)Lcom/byazt/rpt/tt;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/byazt/fcd/a$2;->c:Lcom/byazt/fcd/a;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->aw()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/byazt/fcd/a$2;->c:Lcom/byazt/fcd/a;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/byazt/fcd/a;->eo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public tt(Landroid/app/Dialog;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/byazt/fcd/a$2;->c:Lcom/byazt/fcd/a;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/fcd/a;->tt(Lcom/byazt/fcd/a;)Lcom/byazt/hkv/c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v0, "is_auto_click"

    .line 15
    .line 16
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/fcd/a$2;->c:Lcom/byazt/fcd/a;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/byazt/fcd/a;->tt(Lcom/byazt/fcd/a;)Lcom/byazt/hkv/c;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-class v1, Lcom/byazt/vis/c;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/byazt/vis/c;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/byazt/vis/c;->c(Ljava/util/Map;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/byazt/fcd/a$2;->c:Lcom/byazt/fcd/a;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/byazt/fcd/a;->tt(Lcom/byazt/fcd/a;)Lcom/byazt/hkv/c;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance v0, Lcom/byazt/ete/da;

    .line 45
    .line 46
    invoke-direct {v0}, Lcom/byazt/ete/da;-><init>()V

    .line 47
    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-virtual {p1, v1, v0}, Lcom/byazt/hkv/tt;->c(Landroid/view/View;Lcom/byazt/ete/da;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method
