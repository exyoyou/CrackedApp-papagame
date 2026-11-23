.class public final synthetic Lt5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/base/BaseApp;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/base/BaseApp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt5/a;->b:Lcom/join/kotlin/base/BaseApp;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lt5/a;->b:Lcom/join/kotlin/base/BaseApp;

    invoke-static {v0}, Lcom/join/kotlin/base/BaseApp;->c(Lcom/join/kotlin/base/BaseApp;)Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    return-object v0
.end method
