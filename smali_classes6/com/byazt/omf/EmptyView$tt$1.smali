.class public Lcom/byazt/omf/EmptyView$tt$1;
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
        0x4c7
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/EmptyView$tt;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Z

.field public final synthetic tt:Lcom/byazt/omf/EmptyView$tt;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/EmptyView$tt;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/EmptyView$tt$1;->tt:Lcom/byazt/omf/EmptyView$tt;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/byazt/omf/EmptyView$tt$1;->c:Z

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/EmptyView$tt$1;->tt:Lcom/byazt/omf/EmptyView$tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/omf/EmptyView$tt;->c(Lcom/byazt/omf/EmptyView$tt;)Lcom/byazt/omf/EmptyView$c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/byazt/omf/EmptyView$tt$1;->c:Z

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/byazt/omf/EmptyView$c;->c(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
