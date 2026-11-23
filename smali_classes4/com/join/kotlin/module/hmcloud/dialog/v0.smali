.class public final synthetic Lcom/join/kotlin/module/hmcloud/dialog/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lcom/join/mgps/dto/hmcloud/HMOpConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/dto/hmcloud/HMOpConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/v0;->b:Lcom/join/mgps/dto/hmcloud/HMOpConfig;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/dialog/v0;->b:Lcom/join/mgps/dto/hmcloud/HMOpConfig;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Integer;

    check-cast p4, Ljava/util/List;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;->c(Lcom/join/mgps/dto/hmcloud/HMOpConfig;FLjava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
