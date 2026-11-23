.class public Lcom/byazt/omf/my$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x939
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/my;->tt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/omf/my;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/my;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/my$2;->c:Lcom/byazt/omf/my;

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
    iget-object v0, p0, Lcom/byazt/omf/my$2;->c:Lcom/byazt/omf/my;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/omf/my;->x(Lcom/byazt/omf/my;)Lcom/byazt/ddx/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/16 v1, 0x10

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/byazt/ddx/n;->c(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
