.class public final synthetic Lcom/join/kotlin/ui/cloudarchive/dialog/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/a;->b:Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/a;->b:Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {v0, p1, p2, p3}, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;->N(Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;ILcom/join/kotlin/ui/cloudarchive/data/ArchiveData;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
