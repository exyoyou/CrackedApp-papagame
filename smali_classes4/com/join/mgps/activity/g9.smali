.class public final synthetic Lcom/join/mgps/activity/g9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/ShareWebActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/ShareWebActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/g9;->b:Lcom/join/mgps/activity/ShareWebActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/g9;->b:Lcom/join/mgps/activity/ShareWebActivity;

    check-cast p1, Lf6/a;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->m(Lcom/join/mgps/activity/ShareWebActivity;Lf6/a;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
