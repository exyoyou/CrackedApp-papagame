.class public Lcom/byazt/omf/ve$3$1;
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
        0x102
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/ve$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/omf/ve$3;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/ve$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/ve$3$1;->c:Lcom/byazt/omf/ve$3;

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
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/omf/x;->d()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/omf/ve$3$1;->c:Lcom/byazt/omf/ve$3;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/byazt/omf/ve$3;->c:Lcom/byazt/dj/c;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/byazt/dj/c;->c()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/byazt/qh/tt;->c(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
