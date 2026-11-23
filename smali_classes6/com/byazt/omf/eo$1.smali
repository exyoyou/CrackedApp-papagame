.class public Lcom/byazt/omf/eo$1;
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
        0x297
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/eo;->uj()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/function/Function;

.field public final synthetic tt:Lcom/byazt/omf/eo;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/eo;Ljava/util/function/Function;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/eo$1;->tt:Lcom/byazt/omf/eo;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/omf/eo$1;->c:Ljava/util/function/Function;

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
    iget-object v0, p0, Lcom/byazt/omf/eo$1;->tt:Lcom/byazt/omf/eo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/omf/eo$1;->c:Ljava/util/function/Function;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/byazt/omf/eo;->c(Ljava/util/function/Function;Z)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method
