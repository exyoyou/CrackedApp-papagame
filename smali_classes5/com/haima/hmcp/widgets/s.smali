.class public final synthetic Lcom/haima/hmcp/widgets/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/widgets/AbsIjkVideoView$13;

.field public final synthetic c:F

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView$13;FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/widgets/s;->b:Lcom/haima/hmcp/widgets/AbsIjkVideoView$13;

    iput p2, p0, Lcom/haima/hmcp/widgets/s;->c:F

    iput p3, p0, Lcom/haima/hmcp/widgets/s;->d:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/s;->b:Lcom/haima/hmcp/widgets/AbsIjkVideoView$13;

    iget v1, p0, Lcom/haima/hmcp/widgets/s;->c:F

    iget v2, p0, Lcom/haima/hmcp/widgets/s;->d:F

    invoke-static {v0, v1, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView$13;->a(Lcom/haima/hmcp/widgets/AbsIjkVideoView$13;FF)V

    return-void
.end method
