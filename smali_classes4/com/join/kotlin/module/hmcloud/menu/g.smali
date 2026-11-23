.class public final synthetic Lcom/join/kotlin/module/hmcloud/menu/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;

.field public final synthetic h:Z

.field public final synthetic i:Z

.field public final synthetic j:F


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;IIIILcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;ZZF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/g;->b:Landroid/view/View;

    iput p2, p0, Lcom/join/kotlin/module/hmcloud/menu/g;->c:I

    iput p3, p0, Lcom/join/kotlin/module/hmcloud/menu/g;->d:I

    iput p4, p0, Lcom/join/kotlin/module/hmcloud/menu/g;->e:I

    iput p5, p0, Lcom/join/kotlin/module/hmcloud/menu/g;->f:I

    iput-object p6, p0, Lcom/join/kotlin/module/hmcloud/menu/g;->g:Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;

    iput-boolean p7, p0, Lcom/join/kotlin/module/hmcloud/menu/g;->h:Z

    iput-boolean p8, p0, Lcom/join/kotlin/module/hmcloud/menu/g;->i:Z

    iput p9, p0, Lcom/join/kotlin/module/hmcloud/menu/g;->j:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/g;->b:Landroid/view/View;

    iget v1, p0, Lcom/join/kotlin/module/hmcloud/menu/g;->c:I

    iget v2, p0, Lcom/join/kotlin/module/hmcloud/menu/g;->d:I

    iget v3, p0, Lcom/join/kotlin/module/hmcloud/menu/g;->e:I

    iget v4, p0, Lcom/join/kotlin/module/hmcloud/menu/g;->f:I

    iget-object v5, p0, Lcom/join/kotlin/module/hmcloud/menu/g;->g:Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;

    iget-boolean v6, p0, Lcom/join/kotlin/module/hmcloud/menu/g;->h:Z

    iget-boolean v7, p0, Lcom/join/kotlin/module/hmcloud/menu/g;->i:Z

    iget v8, p0, Lcom/join/kotlin/module/hmcloud/menu/g;->j:F

    invoke-static/range {v0 .. v8}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->Q(Landroid/view/View;IIIILcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;ZZF)V

    return-void
.end method
