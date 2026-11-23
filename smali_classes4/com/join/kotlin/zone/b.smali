.class public final synthetic Lcom/join/kotlin/zone/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/zone/CommonZoneActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/zone/CommonZoneActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/zone/b;->b:Lcom/join/kotlin/zone/CommonZoneActivity;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/zone/b;->b:Lcom/join/kotlin/zone/CommonZoneActivity;

    invoke-static {v0}, Lcom/join/kotlin/zone/CommonZoneActivity;->k(Lcom/join/kotlin/zone/CommonZoneActivity;)Lcom/join/kotlin/zone/adapter/CommonZoneAdapter;

    move-result-object v0

    return-object v0
.end method
