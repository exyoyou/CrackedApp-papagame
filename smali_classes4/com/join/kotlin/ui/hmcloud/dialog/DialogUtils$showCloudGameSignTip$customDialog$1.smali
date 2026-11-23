.class public final Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showCloudGameSignTip$customDialog$1;
.super Lcom/kongzue/dialogx/interfaces/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->showCloudGameSignTip(Landroid/content/Context;Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Lcom/join/mgps/dto/ExtBean;Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kongzue/dialogx/interfaces/s<",
        "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
        "Lcom/join/android/app/mgsim/wufun/databinding/kg;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDialogUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogUtils.kt\ncom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showCloudGameSignTip$customDialog$1\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,255:1\n470#2:256\n470#2:257\n470#2:258\n470#2:259\n470#2:260\n470#2:261\n*S KotlinDebug\n*F\n+ 1 DialogUtils.kt\ncom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showCloudGameSignTip$customDialog$1\n*L\n74#1:256\n75#1:257\n76#1:258\n77#1:259\n78#1:260\n79#1:261\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\u0003H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/join/kotlin/ui/hmcloud/dialog/DialogUtils$showCloudGameSignTip$customDialog$1",
        "Lcom/kongzue/dialogx/interfaces/OnBindingView;",
        "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
        "Lcom/join/android/app/mgsim/wufun/databinding/DialogHomeCloudGameSignBinding;",
        "onBind",
        "",
        "dialog",
        "v",
        "Landroid/view/View;",
        "binding",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDialogUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogUtils.kt\ncom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showCloudGameSignTip$customDialog$1\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,255:1\n470#2:256\n470#2:257\n470#2:258\n470#2:259\n470#2:260\n470#2:261\n*S KotlinDebug\n*F\n+ 1 DialogUtils.kt\ncom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showCloudGameSignTip$customDialog$1\n*L\n74#1:256\n75#1:257\n76#1:258\n77#1:259\n78#1:260\n79#1:261\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $adCfgInfo:Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

.field final synthetic $ctx:Landroid/content/Context;

.field final synthetic $extBean:Lcom/join/mgps/dto/ExtBean;

.field final synthetic $onSign:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Ljava/lang/Runnable;Landroid/content/Context;Lcom/join/mgps/dto/ExtBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showCloudGameSignTip$customDialog$1;->$adCfgInfo:Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showCloudGameSignTip$customDialog$1;->$onSign:Ljava/lang/Runnable;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showCloudGameSignTip$customDialog$1;->$ctx:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showCloudGameSignTip$customDialog$1;->$extBean:Lcom/join/mgps/dto/ExtBean;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/s;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic h(Lcom/kongzue/dialogx/dialogs/CustomDialog;Ljava/lang/Runnable;Landroid/content/Context;Lcom/join/mgps/dto/ExtBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showCloudGameSignTip$customDialog$1;->onBind$lambda$0(Lcom/kongzue/dialogx/dialogs/CustomDialog;Ljava/lang/Runnable;Landroid/content/Context;Lcom/join/mgps/dto/ExtBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/content/Context;Lcom/join/mgps/dto/ExtBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showCloudGameSignTip$customDialog$1;->onBind$lambda$1(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/content/Context;Lcom/join/mgps/dto/ExtBean;Landroid/view/View;)V

    return-void
.end method

.method private static final onBind$lambda$0(Lcom/kongzue/dialogx/dialogs/CustomDialog;Ljava/lang/Runnable;Landroid/content/Context;Lcom/join/mgps/dto/ExtBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->E1()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object p1, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 12
    .line 13
    invoke-virtual {p3}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const-string p3, "btnSign"

    .line 18
    .line 19
    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private static final onBind$lambda$1(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/content/Context;Lcom/join/mgps/dto/ExtBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->E1()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    sget-object p1, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const-string p3, "btnClose"

    .line 15
    .line 16
    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public onBind(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;Lcom/join/android/app/mgsim/wufun/databinding/kg;)V
    .locals 6

    const-string p2, "dialog"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "binding"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showCloudGameSignTip$customDialog$1;->$adCfgInfo:Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;->getSignGiftDuration()I

    move-result p2

    .line 3
    div-int/lit16 v0, p2, 0xe10

    mul-int/lit16 v1, v0, 0xe10

    sub-int/2addr p2, v1

    .line 4
    div-int/lit8 p2, p2, 0x3c

    const-string v1, "\u5206\u949f"

    const-string v2, "\u5c0f\u65f6"

    const/16 v3, 0x2b

    if-lez v0, :cond_0

    if-lez p2, :cond_0

    .line 5
    iget-object v4, p3, Lcom/join/android/app/mgsim/wufun/databinding/kg;->d:Lcom/join/mgps/widget/textview/GradientStrokeTextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p3, Lcom/join/android/app/mgsim/wufun/databinding/kg;->f:Lcom/join/mgps/widget/textview/GradientStrokeTextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/kg;->e:Lcom/join/mgps/widget/textview/GradientStrokeTextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/kg;->g:Lcom/join/mgps/widget/textview/GradientStrokeTextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/kg;->f:Lcom/join/mgps/widget/textview/GradientStrokeTextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/kg;->g:Lcom/join/mgps/widget/textview/GradientStrokeTextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    .line 11
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/kg;->d:Lcom/join/mgps/widget/textview/GradientStrokeTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/kg;->e:Lcom/join/mgps/widget/textview/GradientStrokeTextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-lez p2, :cond_2

    .line 13
    iget-object v0, p3, Lcom/join/android/app/mgsim/wufun/databinding/kg;->d:Lcom/join/mgps/widget/textview/GradientStrokeTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/kg;->e:Lcom/join/mgps/widget/textview/GradientStrokeTextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :cond_2
    :goto_0
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/kg;->d:Lcom/join/mgps/widget/textview/GradientStrokeTextView;

    const-string v0, "#0004FF"

    .line 16
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "#C800FF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 17
    invoke-virtual {p2, v1, v3}, Lcom/join/mgps/widget/textview/GradientStrokeTextView;->setGradientColors(II)V

    .line 18
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/kg;->d:Lcom/join/mgps/widget/textview/GradientStrokeTextView;

    const-string v1, "#FFF7EA"

    .line 19
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    .line 20
    invoke-virtual {p2, v4, v3}, Lcom/join/mgps/widget/textview/GradientStrokeTextView;->setStroke(FI)V

    .line 21
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/kg;->f:Lcom/join/mgps/widget/textview/GradientStrokeTextView;

    .line 22
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 23
    invoke-virtual {p2, v3, v5}, Lcom/join/mgps/widget/textview/GradientStrokeTextView;->setGradientColors(II)V

    .line 24
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/kg;->f:Lcom/join/mgps/widget/textview/GradientStrokeTextView;

    .line 25
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 26
    invoke-virtual {p2, v4, v1}, Lcom/join/mgps/widget/textview/GradientStrokeTextView;->setStroke(FI)V

    .line 27
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/kg;->e:Lcom/join/mgps/widget/textview/GradientStrokeTextView;

    .line 28
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 29
    invoke-virtual {p2, v1, v3}, Lcom/join/mgps/widget/textview/GradientStrokeTextView;->setGradientColors(II)V

    .line 30
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/kg;->g:Lcom/join/mgps/widget/textview/GradientStrokeTextView;

    .line 31
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 32
    invoke-virtual {p2, v0, v1}, Lcom/join/mgps/widget/textview/GradientStrokeTextView;->setGradientColors(II)V

    .line 33
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/kg;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showCloudGameSignTip$customDialog$1;->$onSign:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showCloudGameSignTip$customDialog$1;->$ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showCloudGameSignTip$customDialog$1;->$extBean:Lcom/join/mgps/dto/ExtBean;

    new-instance v3, Lcom/join/kotlin/ui/hmcloud/dialog/h;

    invoke-direct {v3, p1, v0, v1, v2}, Lcom/join/kotlin/ui/hmcloud/dialog/h;-><init>(Lcom/kongzue/dialogx/dialogs/CustomDialog;Ljava/lang/Runnable;Landroid/content/Context;Lcom/join/mgps/dto/ExtBean;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/kg;->j:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showCloudGameSignTip$customDialog$1;->$ctx:Landroid/content/Context;

    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showCloudGameSignTip$customDialog$1;->$extBean:Lcom/join/mgps/dto/ExtBean;

    new-instance v1, Lcom/join/kotlin/ui/hmcloud/dialog/i;

    invoke-direct {v1, p1, p3, v0}, Lcom/join/kotlin/ui/hmcloud/dialog/i;-><init>(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/content/Context;Lcom/join/mgps/dto/ExtBean;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;Landroid/view/View;Landroidx/viewbinding/ViewBinding;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/kongzue/dialogx/dialogs/CustomDialog;

    check-cast p3, Lcom/join/android/app/mgsim/wufun/databinding/kg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showCloudGameSignTip$customDialog$1;->onBind(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;Lcom/join/android/app/mgsim/wufun/databinding/kg;)V

    return-void
.end method
