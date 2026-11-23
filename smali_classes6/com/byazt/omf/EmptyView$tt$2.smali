.class public Lcom/byazt/omf/EmptyView$tt$2;
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
        0x4c8
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/EmptyView$tt;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/omf/EmptyView$tt;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/EmptyView$tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/EmptyView$tt$2;->c:Lcom/byazt/omf/EmptyView$tt;

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
    iget-object v0, p0, Lcom/byazt/omf/EmptyView$tt$2;->c:Lcom/byazt/omf/EmptyView$tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/omf/EmptyView$tt;->c(Lcom/byazt/omf/EmptyView$tt;)Lcom/byazt/omf/EmptyView$c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/byazt/omf/EmptyView$c;->c()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
