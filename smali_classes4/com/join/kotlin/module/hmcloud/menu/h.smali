.class public final synthetic Lcom/join/kotlin/module/hmcloud/menu/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/h;->b:Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/h;->b:Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;

    check-cast p1, Lcom/join/mgps/dto/hmcloud/HMKeyItem;

    check-cast p2, Landroid/view/View;

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v0, p1, p2, p3}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->P(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;Lcom/join/mgps/dto/hmcloud/HMKeyItem;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
