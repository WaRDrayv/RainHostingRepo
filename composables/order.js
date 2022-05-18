export function useOrder() {
  return {
    order: (body) => {
      const user = useUser();
      $fetch("/api/set-product", {
        method: "POST",
        body,
        headers: { jwt: user.value.jwt },
      });
    },
  };
}
