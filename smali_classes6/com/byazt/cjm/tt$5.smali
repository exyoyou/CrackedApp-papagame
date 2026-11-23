.class public Lcom/byazt/cjm/tt$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4db,
        0x5a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cjm/tt;->uj(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Lcom/byazt/cjm/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/cjm/tt;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cjm/tt$5;->tt:Lcom/byazt/cjm/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/cjm/tt$5;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/cjm/tt$5;->tt:Lcom/byazt/cjm/tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/cjm/tt;->c(Lcom/byazt/cjm/tt;)Lcom/byazt/cjm/c$c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/byazt/cjm/c$c;->getActivity()Landroid/app/Activity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/byazt/cjm/tt$5;->c:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v0, v1, v2}, Lcom/byazt/nr/h;->c(Landroid/content/Context;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
