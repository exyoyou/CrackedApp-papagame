.class public Lcom/byazt/nm/c$ve$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x280
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nm/c$ve;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nm/c$ve;


# direct methods
.method public constructor <init>(Lcom/byazt/nm/c$ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nm/c$ve$2;->c:Lcom/byazt/nm/c$ve;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/c$ve$2;->c:Lcom/byazt/nm/c$ve;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/nm/c$ve;->x:Lcom/byazt/nc/yp;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/byazt/nc/yp;->setExpressInteractionListener(Lcom/byazt/ft/c;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/nm/c$ve$2;->c:Lcom/byazt/nm/c$ve;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/byazt/nm/c$ve;->x:Lcom/byazt/nc/yp;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/byazt/nc/yp;->destroy()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
