.class public final synthetic Lcom/join/kotlin/ui/hmcloud/fragment/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;


# direct methods
.method public synthetic constructor <init>(ILcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/b;->b:I

    iput-object p2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/b;->c:Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/b;->b:I

    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/b;->c:Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;

    invoke-static {v0, v1}, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->Q(ILcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;)V

    return-void
.end method
