.class public final synthetic Lv5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/base/impl/BaseDownloadable;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/base/impl/BaseDownloadable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv5/a;->b:Lcom/join/kotlin/base/impl/BaseDownloadable;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lv5/a;->b:Lcom/join/kotlin/base/impl/BaseDownloadable;

    invoke-static {v0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->a(Lcom/join/kotlin/base/impl/BaseDownloadable;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v0

    return-object v0
.end method
