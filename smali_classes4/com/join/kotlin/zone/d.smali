.class public final synthetic Lcom/join/kotlin/zone/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;

.field public final synthetic c:Lcom/join/kotlin/zone/CommonZoneActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;Lcom/join/kotlin/zone/CommonZoneActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/zone/d;->b:Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;

    iput-object p2, p0, Lcom/join/kotlin/zone/d;->c:Lcom/join/kotlin/zone/CommonZoneActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/zone/d;->b:Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;

    iget-object v1, p0, Lcom/join/kotlin/zone/d;->c:Lcom/join/kotlin/zone/CommonZoneActivity;

    check-cast p1, Lcom/join/kotlin/zone/model/bean/GameZoneDataBean;

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/zone/CommonZoneActivity;->n(Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;Lcom/join/kotlin/zone/CommonZoneActivity;Lcom/join/kotlin/zone/model/bean/GameZoneDataBean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
