.class public final synthetic Lcom/google/android/material/color/utilities/p6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/google/android/material/color/utilities/r6;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/color/utilities/r6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/color/utilities/p6;->b:Lcom/google/android/material/color/utilities/r6;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/color/utilities/p6;->b:Lcom/google/android/material/color/utilities/r6;

    check-cast p1, Lcom/google/android/material/color/utilities/l;

    invoke-static {v0, p1}, Lcom/google/android/material/color/utilities/r6;->a(Lcom/google/android/material/color/utilities/r6;Lcom/google/android/material/color/utilities/l;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
