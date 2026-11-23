.class public final synthetic Lcom/join/kotlin/module/hmcloud/menu/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Landroid/widget/TextView;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/r;->b:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/join/kotlin/module/hmcloud/menu/r;->c:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/join/kotlin/module/hmcloud/menu/r;->d:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/join/kotlin/module/hmcloud/menu/r;->e:Landroid/content/Context;

    iput-object p5, p0, Lcom/join/kotlin/module/hmcloud/menu/r;->f:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/r;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/menu/r;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/join/kotlin/module/hmcloud/menu/r;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/join/kotlin/module/hmcloud/menu/r;->e:Landroid/content/Context;

    iget-object v4, p0, Lcom/join/kotlin/module/hmcloud/menu/r;->f:Landroid/widget/TextView;

    move-object v5, p1

    check-cast v5, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSummary;

    invoke-static/range {v0 .. v5}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->X(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/TextView;Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSummary;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
